# Build Pensacola Meals Reimbursement Excel file
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-05-15_2026-06-01_pensacola-meals-reimbursement.xlsx"

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
$wb = $excel.Workbooks.Add()

$darkBlue  = [long]0x1F3864
$midBlue   = [long]0x2E75B6
$lightBlue = [long]0xD6E4F0
$white     = [long]0xFFFFFF
$lightGray = [long]0xF2F2F2
$green     = [long]0x375623
$lightGreen= [long]0xE2EFDA
$darkRed   = [long]0xC00000
$lightRed  = [long]0xFFE0E0

# =====================================================================
# SHEET 1: SUMMARY
# =====================================================================
$s1 = $wb.Sheets.Item(1)
$s1.Name = "Summary"

$s1.Columns.Item(1).ColumnWidth = 30
$s1.Columns.Item(2).ColumnWidth = 14
$s1.Columns.Item(3).ColumnWidth = 8

$r = $s1.Range("A1:C1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "PENSACOLA TRIP - MEALS & GROCERIES REIMBURSEMENT  |  May 15 - June 1, 2026"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$infoItems = @(
    @("Claimant",    "Pete Castellano (Power of Attorney)"),
    @("Reimburse From", "William J. Castellano - Trust Account (NFCU)"),
    @("Property",    "5577 North Shore Way, Pensacola FL"),
    @("Trip Dates",  "May 15 - June 1, 2026 (18 days)"),
    @("Purpose",     "Meals incurred during renovation oversight"),
    @("Basis",       "POA direct reimbursement - not a Schedule E deduction"),
    @("Compiled",    "June 8, 2026")
)
$row = 2
foreach ($i in $infoItems) {
    $s1.Cells.Item($row,1).Value2 = $i[0]; $s1.Cells.Item($row,1).Font.Bold = $true
    $r2 = $s1.Range($s1.Cells.Item($row,2), $s1.Cells.Item($row,3)); $r2.Merge()
    $s1.Cells.Item($row,2).Value2 = $i[1]
    $row++
}
$row++

# Category summary
$r = $s1.Range($s1.Cells.Item($row,1), $s1.Cells.Item($row,3)); $r.Merge()
$c = $s1.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY CATEGORY"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$catHdrs = @("Category","Amount","# Items")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s1.Cells.Item($row,$i+1); $c.Value2 = $catHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$cats = @(
    @("Restaurant Meals", 476.15, 20),
    @("Groceries",        121.36,  5)
)
$catStart = $row
foreach ($cat in $cats) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s1.Cells.Item($row,1).Value2 = $cat[0]; $s1.Cells.Item($row,1).Interior.Color = $bg
    $s1.Cells.Item($row,2).Value2 = [double]$cat[1]; $s1.Cells.Item($row,2).NumberFormat = '$#,##0.00'
    $s1.Cells.Item($row,2).HorizontalAlignment = -4152; $s1.Cells.Item($row,2).Interior.Color = $bg
    $s1.Cells.Item($row,3).Value2 = [int]$cat[2]; $s1.Cells.Item($row,3).HorizontalAlignment = -4108
    $s1.Cells.Item($row,3).Interior.Color = $bg
    $row++
}

$s1.Cells.Item($row,1).Value2 = "TOTAL REIMBURSEMENT"; $s1.Cells.Item($row,1).Font.Bold = $true
$s1.Cells.Item($row,1).Interior.Color = $green; $s1.Cells.Item($row,1).Font.Color = $white
$tc = $s1.Cells.Item($row,2)
$tc.Formula = '=SUM(B' + $catStart + ':B' + ($row-1) + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $green; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
$s1.Cells.Item($row,3).Interior.Color = $green
$rng = $s1.Range($s1.Cells.Item($catStart-1,1), $s1.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# Card breakdown
$r = $s1.Range($s1.Cells.Item($row,1), $s1.Cells.Item($row,3)); $r.Merge()
$c = $s1.Cells.Item($row,1)
$c.Value2 = "CHARGES BY CARD"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$cardHdrs = @("Card","Type","Total Charged")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s1.Cells.Item($row,$i+1); $c.Value2 = $cardHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$cards = @(
    @("-8289","VISA WF Debit",        447.67),
    @("-7552","VISA WF Active Cash",  135.98),
    @("-2409","Target Debit Card",     13.86)
)
$cardStart = $row
foreach ($card in $cards) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s1.Cells.Item($row,1).NumberFormat = "@"; $s1.Cells.Item($row,1).Value2 = $card[0]
    $s1.Cells.Item($row,1).Interior.Color = $bg; $s1.Cells.Item($row,1).HorizontalAlignment = -4108
    $s1.Cells.Item($row,2).Value2 = $card[1]; $s1.Cells.Item($row,2).Interior.Color = $bg
    $s1.Cells.Item($row,3).Value2 = [double]$card[2]; $s1.Cells.Item($row,3).NumberFormat = '$#,##0.00'
    $s1.Cells.Item($row,3).HorizontalAlignment = -4152; $s1.Cells.Item($row,3).Interior.Color = $bg
    $row++
}
$s1.Cells.Item($row,1).Value2 = "TOTAL"; $s1.Cells.Item($row,1).Font.Bold = $true
$s1.Cells.Item($row,1).Interior.Color = $green; $s1.Cells.Item($row,1).Font.Color = $white
$tc2 = $s1.Cells.Item($row,3)
$tc2.Formula = '=SUM(C' + $cardStart + ':C' + ($row-1) + ')'
$tc2.NumberFormat = '$#,##0.00'; $tc2.Font.Bold = $true
$tc2.Interior.Color = $green; $tc2.Font.Color = $white; $tc2.HorizontalAlignment = -4152
$s1.Cells.Item($row,2).Interior.Color = $green
$rng = $s1.Range($s1.Cells.Item($cardStart-1,1), $s1.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

# =====================================================================
# SHEET 2: DETAIL
# =====================================================================
$s2 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s2.Name = "Detail"

$s2.Columns.Item(1).ColumnWidth = 10
$s2.Columns.Item(2).ColumnWidth = 48
$s2.Columns.Item(3).ColumnWidth = 14
$s2.Columns.Item(4).ColumnWidth = 12
$s2.Columns.Item(5).ColumnWidth = 8

$r = $s2.Range("A1:E1"); $r.Merge()
$c = $s2.Cells.Item(1,1)
$c.Value2 = "MEALS & GROCERIES - COMPLETE LISTING  |  May 15 - June 1, 2026"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s2.Rows.Item(1).RowHeight = 22

$r = $s2.Range("A2:E2"); $r.Merge()
$c = $s2.Cells.Item(2,1)
$c.Value2 = "POA reimbursement - 5577 North Shore Way renovation oversight. Alcohol excluded. Proportional splits are food-only amounts."
$c.Font.Size = 9; $c.Font.Italic = $true; $c.Interior.Color = $lightBlue; $c.HorizontalAlignment = -4108

$headers = @("Date","Description","Category","Amount","Card")
for ($i = 0; $i -lt 5; $i++) {
    $c = $s2.Cells.Item(3, $i+1)
    $c.Value2 = $headers[$i]; $c.Font.Bold = $true
    $c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
}
$s2.Rows.Item(3).RowHeight = 16

# ALCOHOL SPLIT METHODOLOGY:
# When a receipt mixes food and alcohol, split using itemized line amounts.
#   Claimed (food): itemized food subtotal  -> goes in $meals above
#   Excluded (alcohol): itemized alcohol subtotal -> goes in $excluded below
# Always retain the itemized receipt — the split is only as defensible as the
# paper trail. Label excluded entries with "(proportional)" to flag a split.
# Drinks-only receipts (no food) go entirely to $excluded with no split.
$meals = @(
    @("5/16/2026","McDonald's, Orlando FL","Restaurant",8.81,"-8289"),
    @("5/17/2026","Popeyes, Atlanta GA (layover)","Restaurant",11.64,"-8289"),
    @("5/17/2026","The Sports Bar, Pensacola FL - food (proportional)","Restaurant",20.92,"-8289"),
    @("5/18/2026","Publix (Perdido Key), Pensacola FL - groceries","Groceries",44.18,"-8289"),
    @("5/19/2026","Burger King #4914, Pensacola FL","Restaurant",13.10,"-8289"),
    @("5/19/2026","Walmart Supercenter, Pensacola FL - groceries","Groceries",16.18,"-8289"),
    @("5/19/2026","Hub Stacey's at The Point - food (proportional)","Restaurant",17.78,"-8289"),
    @("5/21/2026","Welcome To Vallarta - food (proportional), Pensacola FL","Restaurant",21.41,"-8289"),
    @("5/21/2026","Hub Stacey's at The Point - food (proportional)","Restaurant",10.68,"-8289"),
    @("5/22/2026","Purple Parrot Beach Bar - food only, Pensacola FL","Restaurant",24.87,"-8289"),
    @("5/23/2026","Hub Stacey's at The Point - lunch, Pensacola FL","Restaurant",26.34,"-8289"),
    @("5/24/2026","Dollar General #18397, Pensacola FL - groceries","Groceries",36.69,"-8289"),
    @("5/24/2026","Dollar General #18397, Pensacola FL - groceries (split receipt)","Groceries",10.45,"-8289"),
    @("5/24/2026","Johnny Bs Front Porch, Lillian AL - Fish Salad","Restaurant",13.07,"-8289"),
    @("5/24/2026","Johnny Bs Front Porch, Lillian AL - food (proportional)","Restaurant",17.27,"-8289"),
    @("5/25/2026","Hub Stacey's at The Point - dinner, Pensacola FL","Restaurant",17.54,"-8289"),
    @("5/26/2026","Hub Stacey's at The Point - food (proportional)","Restaurant",21.37,"-8289"),
    @("5/27/2026","Hub Stacey's at The Point - dinner (Innerarity), Pensacola FL","Restaurant",25.25,"-8289"),
    @("5/28/2026","FloraBama Oyster Bar - food only, Pensacola FL","Restaurant",16.34,"-8289"),
    @("5/28/2026","Target (Pensacola West) - groceries","Groceries",13.86,"-2409"),
    @("5/29/2026","Hub Stacey's at The Point - food (proportional)","Restaurant",16.90,"-8289"),
    @("5/30/2026","Hub Stacey's at The Point - food (proportional)","Restaurant",17.34,"-8289"),
    @("5/31/2026","Hub Stacey's at The Point - lunch, Pensacola FL","Restaurant",39.54,"-8289"),
    @("5/31/2026","Fisherman's Corner, Pensacola FL","Restaurant",118.03,"-7552"),
    @("6/1/2026","Chipotle, Pensacola FL","Restaurant",17.95,"-7552")
)

$row = 4
foreach ($m in $meals) {
    $bg = if ($m[2] -eq "Groceries") { $lightGreen } else { if (($row % 2) -eq 0) { $lightBlue } else { $white } }
    $c1 = $s2.Cells.Item($row,1); $c1.Value2 = $m[0]; $c1.NumberFormat = "m/d/yyyy"; $c1.Interior.Color = $bg
    $c2 = $s2.Cells.Item($row,2); $c2.Value2 = $m[1]; $c2.Interior.Color = $bg
    $c3 = $s2.Cells.Item($row,3); $c3.Value2 = $m[2]; $c3.Interior.Color = $bg
    $c4 = $s2.Cells.Item($row,4); $c4.Value2 = [double]$m[3]; $c4.NumberFormat = '$#,##0.00'
    $c4.HorizontalAlignment = -4152; $c4.Interior.Color = $bg
    $c5 = $s2.Cells.Item($row,5); $c5.NumberFormat = "@"; $c5.Value2 = $m[4]
    $c5.HorizontalAlignment = -4108; $c5.Interior.Color = $bg
    $row++
}

$totalRow = $row
$s2.Cells.Item($totalRow,2).Value2 = "TOTAL REIMBURSEMENT"
$s2.Cells.Item($totalRow,2).Font.Bold = $true
$s2.Cells.Item($totalRow,2).Interior.Color = $green
$s2.Cells.Item($totalRow,2).Font.Color = $white
$tc = $s2.Cells.Item($totalRow,4)
$tc.Formula = '=SUM(D4:D' + ($totalRow-1) + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $green; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
foreach ($col in @(1,3,5)) {
    $s2.Cells.Item($totalRow,$col).Interior.Color = $green
}
$rng = $s2.Range($s2.Cells.Item(3,1), $s2.Cells.Item($totalRow,5))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

$s2.Rows.Item(4).Select() | Out-Null
$excel.ActiveWindow.FreezePanes = $true

# =====================================================================
# SHEET 3: EXCLUDED (Alcohol + Not Claimed)
# =====================================================================
$s3 = $wb.Sheets.Add([System.Type]::Missing, $s2)
$s3.Name = "Excluded"

$s3.Columns.Item(1).ColumnWidth = 10
$s3.Columns.Item(2).ColumnWidth = 46
$s3.Columns.Item(3).ColumnWidth = 14
$s3.Columns.Item(4).ColumnWidth = 12
$s3.Columns.Item(5).ColumnWidth = 8

$r = $s3.Range("A1:E1"); $r.Merge()
$c = $s3.Cells.Item(1,1)
$c.Value2 = "EXCLUDED - Alcohol (Not Claimed for Reimbursement)"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$s3.Rows.Item(1).RowHeight = 22

$r = $s3.Range("A2:E2"); $r.Merge()
$s3.Cells.Item(2,1).Value2 = "Documented for completeness. Not included in reimbursement total. Proportional splits: food claimed above, alcohol shown here."
$s3.Cells.Item(2,1).Font.Italic = $true

$exHdrs = @("Date","Description","Reason","Amount","Card")
for ($i = 0; $i -lt 5; $i++) {
    $c = $s3.Cells.Item(3,$i+1); $c.Value2 = $exHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $darkRed; $c.Font.Color = $white
}

$excluded = @(
    # Alcohol from proportional splits (food portion was claimed above)
    @("5/17/2026","The Sports Bar - Yuengling (proportional)","Alcohol",9.08,"-8289"),
    @("5/19/2026","Hub Stacey's at The Point - Yuengling (proportional)","Alcohol",9.58,"-8289"),
    @("5/20/2026","FloraBama Lounge - alcohol portion","Alcohol",17.25,"-8289"),
    @("5/21/2026","Welcome To Vallarta - margarita (proportional)","Alcohol",7.77,"-8289"),
    @("5/21/2026","Hub Stacey's at The Point - Yuengling (proportional)","Alcohol",14.01,"-8289"),
    @("5/22/2026","Purple Parrot Beach Bar - Yuengling 2x (incl. cash tip)","Alcohol",12.53,"-8289"),
    @("5/23/2026","Hub Stacey's at The Point - Yuengling","Alcohol",14.74,"-8289"),
    @("5/24/2026","Johnny Bs Front Porch - Yuengling + Tito's (proportional)","Alcohol",31.18,"-8289"),
    @("5/26/2026","Hub Stacey's at The Point - Yuengling (proportional)","Alcohol",9.35,"-8289"),
    @("5/29/2026","Hub Stacey's at The Point - Yuengling (proportional)","Alcohol",4.55,"-8289"),
    @("5/30/2026","Hub Stacey's at The Point - Yuengling (proportional, 4:46 PM)","Alcohol",4.66,"-8289"),
    # Drinks-only (separate receipts, no food component)
    @("5/30/2026","Hub Stacey's at The Point - 4 Yuengling + Coors (11:38 PM)","Alcohol",23.29,"-8289"),
    @("5/31/2026","Hub Stacey's at The Point - 2 Yuengling (incl. tip)","Alcohol",10.00,"Cash"),
    @("5/31/2026","Bushwackers Landing - drinks only","Alcohol",23.27,"-7552"),
    # Other F&B not claimed for reimbursement
    @("5/18/2026","McDonald's, Pensacola FL","Not claimed",5.36,"-8289"),
    @("5/20/2026","FloraBama Lounge Admission","Not claimed",5.00,"-8289")
)

$row = 4
foreach ($ex in $excluded) {
    $bg = if (($row % 2) -eq 0) { $lightRed } else { $white }
    $s3.Cells.Item($row,1).Value2 = $ex[0]; $s3.Cells.Item($row,1).NumberFormat = "m/d/yyyy"; $s3.Cells.Item($row,1).Interior.Color = $bg
    $s3.Cells.Item($row,2).Value2 = $ex[1]; $s3.Cells.Item($row,2).Interior.Color = $bg
    $s3.Cells.Item($row,3).Value2 = $ex[2]; $s3.Cells.Item($row,3).Interior.Color = $bg; $s3.Cells.Item($row,3).HorizontalAlignment = -4108
    $s3.Cells.Item($row,4).Value2 = [double]$ex[3]; $s3.Cells.Item($row,4).NumberFormat = '$#,##0.00'
    $s3.Cells.Item($row,4).HorizontalAlignment = -4152; $s3.Cells.Item($row,4).Interior.Color = $bg
    $s3.Cells.Item($row,5).NumberFormat = "@"; $s3.Cells.Item($row,5).Value2 = $ex[4]
    $s3.Cells.Item($row,5).HorizontalAlignment = -4108; $s3.Cells.Item($row,5).Interior.Color = $bg
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
# Sheet order: Summary | Detail | Excluded
# =====================================================================
$s1.Move($wb.Sheets.Item(1))
$s2.Move([System.Type]::Missing, $s1)

$s1.Tab.Color = $green
$s2.Tab.Color = $midBlue
$s3.Tab.Color = $darkRed
$s1.Activate()

# Save
if (Test-Path $outputPath) { Remove-Item $outputPath -Force }
$wb.SaveAs($outputPath, 51)
$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null

Write-Host "Saved: $outputPath"
