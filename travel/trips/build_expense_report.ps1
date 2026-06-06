# Build Pensacola Trip Expense Report Excel file
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026_0515-0601_pensacola-expense-report.xlsx"

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
$wb = $excel.Workbooks.Add()

$darkBlue  = [long]0x1F3864
$midBlue   = [long]0x2E75B6
$lightBlue = [long]0xD6E4F0
$white     = [long]0xFFFFFF
$lightGray = [long]0xF2F2F2
$darkRed   = [long]0xC00000
$lightRed  = [long]0xFFE0E0
$yellow    = [long]0xFFF2CC

# =====================================================================
# SHEET 1: EXPENSES
# =====================================================================
$s1 = $wb.Sheets.Item(1)
$s1.Name = "Expenses"

$s1.Columns.Item(1).ColumnWidth = 10
$s1.Columns.Item(2).ColumnWidth = 44
$s1.Columns.Item(3).ColumnWidth = 14
$s1.Columns.Item(4).ColumnWidth = 12
$s1.Columns.Item(5).ColumnWidth = 8
$s1.Columns.Item(6).ColumnWidth = 10

# Title
$r = $s1.Range("A1:F1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "PENSACOLA TRIP - EXPENSE DETAIL  |  May 15 - June 1, 2026"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$r = $s1.Range("A2:F2"); $r.Merge()
$c = $s1.Cells.Item(2,1)
$c.Value2 = "Preparer: Pete Castellano     Compiled: June 2, 2026     Purpose: Renovation oversight / Father's POA"
$c.Font.Size = 9; $c.Interior.Color = $lightBlue; $c.HorizontalAlignment = -4108

$headers = @("Date","Description","Category","Amount","Card","Reimb?")
for ($i = 0; $i -lt 6; $i++) {
    $c = $s1.Cells.Item(3, $i+1)
    $c.Value2 = $headers[$i]; $c.Font.Bold = $true
    $c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
}
$s1.Rows.Item(3).RowHeight = 16

# Date, Description, Category, Amount, Card, Reimb
$expenses = @(
    @("5/15/2026","SW OMA-STL-MCO (conf CMIJAL)","Air Fare",467.20,"-2674","Yes"),
    @("5/16/2026","McDonald's, Orlando FL","Meals",8.81,"-8289","Yes"),
    @("5/17/2026","Budget Rental, Orlando FL (5/15 to 5/17)","Car Rental",94.12,"-0733","Yes"),
    @("5/17/2026","Shell, Ocoee FL","Gas/Tolls",16.75,"-2674","Yes"),
    @("5/17/2026","Delta MCO-ATL-PNS (conf H543QZ)","Air Fare",416.20,"-0733","Yes"),
    @("5/17/2026","Delta Excess Baggage (H543QZ)","Air Fare",45.00,"-2674","Yes"),
    @("5/17/2026","Popeyes, Atlanta GA (layover)","Meals",11.64,"-8289","Yes"),
    @("5/20/2026","FloraBama Oyster - food only, Pensacola FL","Meals",16.34,"-8289","Yes"),
    @("5/20/2026","FloraBama Lounge Admission, Pensacola FL","Other",5.00,"-8289","Noted*"),
    @("5/21/2026","Perdido Pack & Ship, Pensacola FL","Other",16.71,"-0733","Yes"),
    @("5/22/2026","Purple Parrot Beach Bar - food only, Pensacola FL","Meals",24.87,"-8289","Yes"),
    @("5/23/2026","Murphy USA, Pensacola FL","Gas/Tolls",67.82,"-0733","Yes"),
    @("5/23/2026","Perdido Key Resort (5/17 to 5/23), Pensacola FL","Hotel",915.65,"-0733","Yes"),
    @("5/31/2026","Hub Stacey's at The Point - lunch, Pensacola FL","Meals",39.54,"-8289","Yes"),
    @("5/31/2026","Fisherman's Corner, Pensacola FL","Meals",118.03,"-7552","Yes"),
    @("5/31/2026","Publix, Pensacola FL - hair gel","Other",20.84,"-8289","Yes"),
    @("6/1/2026","Budget Rental, Pensacola FL (5/17 to 6/1)","Car Rental",1551.74,"-2674","Yes"),
    @("6/1/2026","Airbnb/Landing, Pensacola FL (5/23 to 6/1)","Hotel",1898.45,"-2674","Yes"),
    @("6/1/2026","SW Baggage Fee PNS-OMA (conf AU84MN)","Air Fare",55.00,"-7552","Yes"),
    @("6/1/2026","Circle K, Pensacola FL - rental car fuel","Gas/Tolls",36.64,"-7552","Yes"),
    @("6/1/2026","Chipotle, Pensacola FL","Meals",17.95,"-7552","Yes"),
    @("6/1/2026","Omaha Airport - cart rental","Other",6.00,"-7552","Yes"),
    @("6/1/2026","SW PNS-BNA-STL-OMA (conf AU84MN)","Air Fare",493.50,"-2674","Yes")
)

$row = 4
foreach ($e in $expenses) {
    $bg = if (($row % 2) -eq 0) { $lightBlue } else { $white }
    if ($e[5] -eq "Noted*") { $bg = $yellow }

    $c1 = $s1.Cells.Item($row,1); $c1.Value2 = $e[0]; $c1.NumberFormat = "m/d/yyyy"; $c1.Interior.Color = $bg
    $c2 = $s1.Cells.Item($row,2); $c2.Value2 = $e[1]; $c2.Interior.Color = $bg
    $c3 = $s1.Cells.Item($row,3); $c3.Value2 = $e[2]; $c3.Interior.Color = $bg
    $c4 = $s1.Cells.Item($row,4); $c4.Value2 = [double]$e[3]; $c4.NumberFormat = '$#,##0.00'; $c4.HorizontalAlignment = -4152; $c4.Interior.Color = $bg
    $c5 = $s1.Cells.Item($row,5); $c5.NumberFormat = "@"; $c5.Value2 = $e[4]; $c5.HorizontalAlignment = -4108; $c5.Interior.Color = $bg
    $c6 = $s1.Cells.Item($row,6); $c6.Value2 = $e[5]; $c6.HorizontalAlignment = -4108; $c6.Interior.Color = $bg
    $row++
}

$totalRow = $row
$s1.Cells.Item($totalRow,2).Value2 = "TOTAL REIMBURSABLE"
$s1.Cells.Item($totalRow,2).Font.Bold = $true
$s1.Cells.Item($totalRow,2).Interior.Color = $darkBlue
$s1.Cells.Item($totalRow,2).Font.Color = $white
$tc = $s1.Cells.Item($totalRow,4)
$tc.Formula = '=SUMIF(F4:F' + ($totalRow-1) + ',"Yes",D4:D' + ($totalRow-1) + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
foreach ($col in @(1,3,5,6)) {
    $s1.Cells.Item($totalRow,$col).Interior.Color = $darkBlue
}
$rng = $s1.Range($s1.Cells.Item(3,1), $s1.Cells.Item($totalRow,6))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

$s1.Rows.Item(4).Select() | Out-Null
$excel.ActiveWindow.FreezePanes = $true

# =====================================================================
# SHEET 2: SUMMARY
# =====================================================================
$s2 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s2.Name = "Summary"

$s2.Columns.Item(1).ColumnWidth = 28
$s2.Columns.Item(2).ColumnWidth = 14
$s2.Columns.Item(3).ColumnWidth = 8

$r = $s2.Range("A1:C1"); $r.Merge()
$c = $s2.Cells.Item(1,1)
$c.Value2 = "PENSACOLA TRIP EXPENSE REPORT  -  MAY 15 to JUNE 1, 2026"
$c.Font.Bold = $true; $c.Font.Size = 14; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s2.Rows.Item(1).RowHeight = 24

$infoItems = @(
    @("Traveler", "Pete Castellano"),
    @("Purpose", "Renovation oversight + renter move-in (Father's POA property)"),
    @("Dates", "May 15 - June 1, 2026 (18 days)"),
    @("Property", "5577 North Shore Way, Pensacola FL"),
    @("Compiled", "June 2, 2026")
)
$row = 2
foreach ($i in $infoItems) {
    $s2.Cells.Item($row,1).Value2 = $i[0]; $s2.Cells.Item($row,1).Font.Bold = $true
    $r2 = $s2.Range($s2.Cells.Item($row,2), $s2.Cells.Item($row,3)); $r2.Merge()
    $s2.Cells.Item($row,2).Value2 = $i[1]
    $row++
}

$row++

# Category summary
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,3)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY CATEGORY"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$catHdrs = @("Category","Amount","# Items")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $catHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$cats = @(
    @("Air Fare",          1476.90, 5),
    @("Car Rental",        1645.86, 2),
    @("Gas / Tolls",        121.21, 3),
    @("Hotel",             2814.10, 2),
    @("Meals (food only)",  217.74, 8),
    @("Other",              42.55,  3)
)
$catStart = $row
foreach ($cat in $cats) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s2.Cells.Item($row,1).Value2 = $cat[0]; $s2.Cells.Item($row,1).Interior.Color = $bg
    $s2.Cells.Item($row,2).Value2 = [double]$cat[1]; $s2.Cells.Item($row,2).NumberFormat = '$#,##0.00'
    $s2.Cells.Item($row,2).HorizontalAlignment = -4152; $s2.Cells.Item($row,2).Interior.Color = $bg
    $s2.Cells.Item($row,3).Value2 = [int]$cat[2]; $s2.Cells.Item($row,3).HorizontalAlignment = -4108
    $s2.Cells.Item($row,3).Interior.Color = $bg
    $row++
}

$s2.Cells.Item($row,1).Value2 = "TOTAL REIMBURSABLE"; $s2.Cells.Item($row,1).Font.Bold = $true
$s2.Cells.Item($row,1).Interior.Color = $darkBlue; $s2.Cells.Item($row,1).Font.Color = $white
$tc = $s2.Cells.Item($row,2)
$tc.Formula = '=SUM(B' + $catStart + ':B' + ($row-1) + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
$s2.Cells.Item($row,3).Interior.Color = $darkBlue
$rng = $s2.Range($s2.Cells.Item($catStart-1,1), $s2.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# Card breakdown
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,3)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "CHARGES BY CARD (ALL - incl. excluded)"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$cardHdrs = @("Card","Type","Total Charged")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $cardHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$cards = @(
    @("-2674","VISA SW Rapid Rewards+",  2514.04),
    @("-0733","VISA Personal",           1598.69),
    @("-8289","VISA WF Debit",           1375.32),
    @("-7552","VISA WF Active Cash",      630.20),
    @("Cash", "Direct",                     7.53)
)
$cardStart = $row
foreach ($card in $cards) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s2.Cells.Item($row,1).NumberFormat = "@"; $s2.Cells.Item($row,1).Value2 = $card[0]; $s2.Cells.Item($row,1).Interior.Color = $bg; $s2.Cells.Item($row,1).HorizontalAlignment = -4108
    $s2.Cells.Item($row,2).Value2 = $card[1]; $s2.Cells.Item($row,2).Interior.Color = $bg
    $s2.Cells.Item($row,3).Value2 = [double]$card[2]; $s2.Cells.Item($row,3).NumberFormat = '$#,##0.00'
    $s2.Cells.Item($row,3).HorizontalAlignment = -4152; $s2.Cells.Item($row,3).Interior.Color = $bg
    $row++
}
$s2.Cells.Item($row,1).Value2 = "GRAND TOTAL (all charges)"; $s2.Cells.Item($row,1).Font.Bold = $true
$s2.Cells.Item($row,1).Interior.Color = $darkBlue; $s2.Cells.Item($row,1).Font.Color = $white
$tc2 = $s2.Cells.Item($row,3)
$tc2.Formula = '=SUM(C' + $cardStart + ':C' + ($row-1) + ')'
$tc2.NumberFormat = '$#,##0.00'; $tc2.Font.Bold = $true
$tc2.Interior.Color = $darkBlue; $tc2.Font.Color = $white; $tc2.HorizontalAlignment = -4152
$s2.Cells.Item($row,2).Interior.Color = $darkBlue
$rng = $s2.Range($s2.Cells.Item($cardStart-1,1), $s2.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# Credits applied
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,3)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "CREDITS APPLIED TO FLIGHTS"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$credHdrs = @("Credit","Status","Amount")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $credHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$credits = @(
    @("SW Flight Credit (AU84MN return)", "Expires Aug 2026 - SPENT", 442.20),
    @("Delta eCredit (H543QZ outbound)",  "Spent",                    145.40)
)
$credStart = $row
foreach ($cr in $credits) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s2.Cells.Item($row,1).Value2 = $cr[0]; $s2.Cells.Item($row,1).Interior.Color = $bg
    $s2.Cells.Item($row,2).Value2 = $cr[1]; $s2.Cells.Item($row,2).Interior.Color = $bg
    $s2.Cells.Item($row,3).Value2 = [double]$cr[2]; $s2.Cells.Item($row,3).NumberFormat = '$#,##0.00'
    $s2.Cells.Item($row,3).HorizontalAlignment = -4152; $s2.Cells.Item($row,3).Interior.Color = $bg
    $row++
}
$s2.Cells.Item($row,1).Value2 = "Total Credits Applied"; $s2.Cells.Item($row,1).Font.Bold = $true
$s2.Cells.Item($row,1).Interior.Color = $lightBlue
$tc3 = $s2.Cells.Item($row,3)
$tc3.Formula = '=SUM(C' + $credStart + ':C' + ($row-1) + ')'
$tc3.NumberFormat = '$#,##0.00'; $tc3.Font.Bold = $true; $tc3.HorizontalAlignment = -4152
$tc3.Interior.Color = $lightBlue; $s2.Cells.Item($row,2).Interior.Color = $lightBlue
$rng = $s2.Range($s2.Cells.Item($credStart-1,1), $s2.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

# =====================================================================
# SHEET 3: EXCLUDED
# =====================================================================
$s3 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s3.Name = "Excluded"

$s3.Columns.Item(1).ColumnWidth = 10
$s3.Columns.Item(2).ColumnWidth = 42
$s3.Columns.Item(3).ColumnWidth = 14
$s3.Columns.Item(4).ColumnWidth = 12
$s3.Columns.Item(5).ColumnWidth = 8

$r = $s3.Range("A1:E1"); $r.Merge()
$c = $s3.Cells.Item(1,1)
$c.Value2 = "EXCLUDED ITEMS - Alcohol Only / Non-Reimbursable"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$s3.Rows.Item(1).RowHeight = 22

$r = $s3.Range("A2:E2"); $r.Merge()
$s3.Cells.Item(2,1).Value2 = "Documented for reconciliation. Not included in reimbursable total."
$s3.Cells.Item(2,1).Font.Italic = $true

$exHdrs = @("Date","Description","Reason","Amount","Card")
for ($i = 0; $i -lt 5; $i++) {
    $c = $s3.Cells.Item(3,$i+1); $c.Value2 = $exHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $darkRed; $c.Font.Color = $white
}

$excluded = @(
    @("5/17/2026","The Sports Bar, Pensacola FL - 2 Yuengling","Alcohol",8.82,"-8289"),
    @("5/20/2026","FloraBama Lounge - alcohol portion","Alcohol",17.25,"-8289"),
    @("5/20/2026","FloraBama Lounge Admission","Non-reimb.",5.00,"-8289"),
    @("5/22/2026","Purple Parrot, Pensacola FL - Yuengling","Alcohol",12.53,"-8289"),
    @("5/31/2026","Hub Stacey's at The Point - 2 Yuengling","Alcohol",7.53,"Cash"),
    @("5/31/2026","Bushwackers Landing - drinks only","Alcohol",26.12,"-7552")
)

$row = 4
foreach ($ex in $excluded) {
    $bg = if (($row % 2) -eq 0) { $lightRed } else { $white }
    $s3.Cells.Item($row,1).Value2 = $ex[0]; $s3.Cells.Item($row,1).NumberFormat = "m/d/yyyy"; $s3.Cells.Item($row,1).Interior.Color = $bg
    $s3.Cells.Item($row,2).Value2 = $ex[1]; $s3.Cells.Item($row,2).Interior.Color = $bg
    $s3.Cells.Item($row,3).Value2 = $ex[2]; $s3.Cells.Item($row,3).Interior.Color = $bg; $s3.Cells.Item($row,3).HorizontalAlignment = -4108
    $s3.Cells.Item($row,4).Value2 = [double]$ex[3]; $s3.Cells.Item($row,4).NumberFormat = '$#,##0.00'
    $s3.Cells.Item($row,4).HorizontalAlignment = -4152; $s3.Cells.Item($row,4).Interior.Color = $bg
    $s3.Cells.Item($row,5).NumberFormat = "@"; $s3.Cells.Item($row,5).Value2 = $ex[4]; $s3.Cells.Item($row,5).HorizontalAlignment = -4108; $s3.Cells.Item($row,5).Interior.Color = $bg
    $row++
}
$s3.Cells.Item($row,2).Value2 = "TOTAL EXCLUDED"; $s3.Cells.Item($row,2).Font.Bold = $true
$s3.Cells.Item($row,2).Interior.Color = $darkRed; $s3.Cells.Item($row,2).Font.Color = $white
$tc4 = $s3.Cells.Item($row,4)
$tc4.Formula = '=SUM(D4:D' + ($row-1) + ')'
$tc4.NumberFormat = '$#,##0.00'; $tc4.Font.Bold = $true
$tc4.Interior.Color = $darkRed; $tc4.Font.Color = $white; $tc4.HorizontalAlignment = -4152
foreach ($col in @(1,3,5)) { $s3.Cells.Item($row,$col).Interior.Color = $darkRed }
$rng = $s3.Range($s3.Cells.Item(3,1), $s3.Cells.Item($row,5))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

# =====================================================================
# Sheet order: Summary | Expenses | Excluded
# =====================================================================
$s2.Move($wb.Sheets.Item(1))   # Summary becomes sheet 1
# s1=Expenses is now sheet 3, s3=Excluded is sheet 2 - move Expenses to sheet 2
$s1.Move([System.Type]::Missing, $s2)

$s2.Activate()
$s2.Tab.Color = $darkBlue
$s1.Tab.Color = $midBlue
$s3.Tab.Color = $darkRed

# Save
if (Test-Path $outputPath) { Remove-Item $outputPath -Force }
$wb.SaveAs($outputPath, 51)
$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null

Write-Host "Saved: $outputPath"
