# Build Nashville Trip Expense Report Excel file
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-06-22_2026-06-26_nashville-expense-report.xlsx"

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

# =====================================================================
# DATA
# =====================================================================
# Date, Description, Category, Amount, Card, Reimb?
$expenses = @(
    @("6/22/2026","SW MCO-BNA (C2LURD) - card charge","Air Fare",288.98,"-2785","Yes"),
    @("6/22/2026","SW MCO-BNA (C2LURD) - SW travel credit applied","Air Fare",161.12,"SW Credit","Yes"),
    @("6/22/2026","Uber, BNA Airport to Union Station Hotel Nashville","Ground Transport",32.95,"-0733","Yes"),
    @("6/26/2026","Uber, Union Station Hotel Nashville to BNA Airport","Ground Transport",20.95,"-0733","Yes"),
    @("6/26/2026","HMSHost/Great Divide C, Denver Airport (DEN layover) - meal","Meals",47.85,"-2674","Yes"),
    @("6/26/2026","SW BNA-DEN-OMA (CBRFPV) - card charge","Air Fare",15.50,"-2674","Yes"),
    @("6/26/2026","SW BNA-DEN-OMA (CBRFPV) - SW travel credit applied","Air Fare",273.70,"SW Credit","Yes")
)

# No excluded/personal items this trip
$excluded = @()

# Payment type totals (card, display name, amount)
$paymentTypes = @(
    @("-2785",     "VISA -2785",              288.98),
    @("-2674",     "VISA SW Rapid Rewards+",   63.35),
    @("-0733",     "VISA Personal",            53.90),
    @("SW Credit", "Southwest Flight Credit", 434.82)
)

# =====================================================================
# SHEET 1: EXPENSES
# =====================================================================
$s1 = $wb.Sheets.Item(1)
$s1.Name = "Expenses"

$s1.Columns.Item(1).ColumnWidth = 10
$s1.Columns.Item(2).ColumnWidth = 52
$s1.Columns.Item(3).ColumnWidth = 16
$s1.Columns.Item(4).ColumnWidth = 12
$s1.Columns.Item(5).ColumnWidth = 12
$s1.Columns.Item(6).ColumnWidth = 10

$r = $s1.Range("A1:F1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "NASHVILLE TRIP - EXPENSE DETAIL  |  June 22 - June 26, 2026"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$r = $s1.Range("A2:F2"); $r.Merge()
$c = $s1.Cells.Item(2,1)
$c.Value2 = "Preparer: Pete Castellano     Compiled: July 4, 2026     Purpose: HM Alpha training, Union Station Nashville Yards - billable to Unifocus"
$c.Font.Size = 9; $c.Interior.Color = $lightBlue; $c.HorizontalAlignment = -4108

$headers = @("Date","Description","Category","Amount","Card","Reimb?")
for ($i = 0; $i -lt 6; $i++) {
    $c = $s1.Cells.Item(3, $i+1)
    $c.Value2 = $headers[$i]; $c.Font.Bold = $true
    $c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
}
$s1.Rows.Item(3).RowHeight = 16

$row = 4
foreach ($e in $expenses) {
    $bg = if (($row % 2) -eq 0) { $lightBlue } else { $white }
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
foreach ($col in @(1,3,5,6)) { $s1.Cells.Item($totalRow,$col).Interior.Color = $darkBlue }
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

$s2.Columns.Item(1).ColumnWidth = 22
$s2.Columns.Item(2).ColumnWidth = 28
$s2.Columns.Item(3).ColumnWidth = 14
$s2.Columns.Item(4).ColumnWidth = 12
$s2.Columns.Item(5).ColumnWidth = 12

$r = $s2.Range("A1:E1"); $r.Merge()
$c = $s2.Cells.Item(1,1)
$c.Value2 = "NASHVILLE TRIP EXPENSE REPORT  -  JUNE 22 to JUNE 26, 2026"
$c.Font.Bold = $true; $c.Font.Size = 14; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s2.Rows.Item(1).RowHeight = 24

$infoItems = @(
    @("Traveler", "Pete Castellano"),
    @("Purpose", "HM Alpha training - Union Station Nashville Yards (billable to Unifocus)"),
    @("Dates", "June 22 - June 26, 2026 (5 days)"),
    @("Property", "Union Station Nashville Yards, Autograph Collection"),
    @("Compiled", "July 4, 2026"),
    @("Note", "Hotel comped by property. No baggage fees - one checked bag free both directions.")
)
$row = 2
foreach ($i in $infoItems) {
    $s2.Cells.Item($row,1).Value2 = $i[0]; $s2.Cells.Item($row,1).Font.Bold = $true
    $r2 = $s2.Range($s2.Cells.Item($row,2), $s2.Cells.Item($row,5)); $r2.NumberFormat = "@"; $r2.Merge()
    $s2.Cells.Item($row,2).Value2 = $i[1]
    $row++
}
$row++

# ---- SUMMARY BY CATEGORY ----
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,5)); $r.Merge()
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
    @("Air Fare",         739.30, 4),
    @("Ground Transport",  53.90, 2),
    @("Meals",             47.85, 1)
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

# ---- SUMMARY BY PAYMENT TYPE ----
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,5)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY PAYMENT TYPE"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$ptHdrs = @("Payment Type","Description","Amount")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $ptHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++
$ptStart = $row

foreach ($pt in $paymentTypes) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $c1 = $s2.Cells.Item($row,1); $c1.NumberFormat = "@"; $c1.Value2 = [string]$pt[0]; $c1.Interior.Color = $bg; $c1.HorizontalAlignment = -4108
    $c2 = $s2.Cells.Item($row,2); $c2.Value2 = [string]$pt[1]; $c2.Interior.Color = $bg
    $c3 = $s2.Cells.Item($row,3); $c3.Value2 = [double]$pt[2]; $c3.NumberFormat = '$#,##0.00'; $c3.HorizontalAlignment = -4152; $c3.Interior.Color = $bg
    $row++
}
$ptEndRow = $row - 1
$s2.Cells.Item($row,1).Value2 = "TOTAL"; $s2.Cells.Item($row,1).Font.Bold = $true
$s2.Cells.Item($row,1).Interior.Color = $darkBlue; $s2.Cells.Item($row,1).Font.Color = $white
$s2.Cells.Item($row,2).Interior.Color = $darkBlue
$tc = $s2.Cells.Item($row,3)
$tc.Formula = '=SUM(C' + $ptStart + ':C' + $ptEndRow + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
$rng = $s2.Range($s2.Cells.Item($ptStart-1,1), $s2.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# ---- OPEN ITEMS ----
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,5)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "OPEN ITEMS BEFORE SUBMISSION"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$row++
$s2.Cells.Item($row,1).Value2 = "Confirm submission channel (Shilpa Bhando vs. other Unifocus contact)."
$r3 = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,5)); $r3.Merge()
$row++
$s2.Cells.Item($row,1).Value2 = "Meals confirmed reimbursement-eligible (Pete, 7/4/26); per-diem caps and documentation rules still unconfirmed."
$r4 = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,5)); $r4.Merge()

# =====================================================================
# SHEET 3: EXCLUDED
# =====================================================================
$s3 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s3.Name = "Excluded"

$s3.Columns.Item(1).ColumnWidth = 60
$r = $s3.Range("A1:A1")
$c = $s3.Cells.Item(1,1)
$c.Value2 = "EXCLUDED ITEMS - Personal / Non-Reimbursable"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$s3.Rows.Item(1).RowHeight = 22
$s3.Cells.Item(2,1).Value2 = "None - no personal or excluded expenses on this trip."
$s3.Cells.Item(2,1).Font.Italic = $true

# =====================================================================
# Sheet order: Summary | Expenses | Excluded
# =====================================================================
$s2.Move($wb.Sheets.Item(1))
$s1.Move([System.Type]::Missing, $s2)

$s2.Activate()
$s2.Tab.Color = $darkBlue
$s1.Tab.Color = $midBlue
$s3.Tab.Color = $darkRed

if (Test-Path $outputPath) { Remove-Item $outputPath -Force }
$wb.SaveAs($outputPath, 51)
$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null

Write-Host "Saved: $outputPath"
