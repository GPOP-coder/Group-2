# Build New Orleans Trip Expense Report - Unifocus ER Template format
# Columns match Unifocus's own "Unifocus Expense Report" cheat sheet exactly,
# so rows can be cut-and-pasted directly into their blank official form.
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-07-06_2026-07-09_new-orleans-expense-report.xlsx"

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
$wb = $excel.Workbooks.Add()

$darkBlue  = [long]0x1F3864
$midBlue   = [long]0x2E75B6
$lightBlue = [long]0xD6E4F0
$white     = [long]0xFFFFFF
$lightGray = [long]0xF2F2F2
$yellow    = [long]0xFFFF99

# =====================================================================
# Known data (airfare only confirmed pre-trip; trip is 7/6-7/9/26)
# Date, Amount, ExchRate, Paid by, Details, Category, Billable/UF, Charge Code
# =====================================================================
$knownRows = @(
    @("7/6/2026", 545.19, 1.00, "PERSONAL", "SW round-trip OMA-MSY (CVMCLW): outbound OMA-DEN-MSY (WN2060/WN1643, rebooked from OMA-DAL-MSY - mechanical delay); return MSY-STL-OMA 7/9 (WN3021/WN4912) - card charge portion, Visa -2674", "Air Fare", "HM Alpha - InterContinental New Orleans", ""),
    @("7/6/2026", 316.20, 1.00, "PERSONAL", "SW round-trip OMA-MSY (CVMCLW) - SW travel credit applied", "Air Fare", "HM Alpha - InterContinental New Orleans", ""),
    @("7/6/2026", 31.08, 1.00, "PERSONAL", "HMSHost/Great Divide C, Denver Airport (DEN layover, mechanical delay) - taco barbacoa, soda, tip", "Lunch", "HM Alpha - InterContinental New Orleans", ""),
    @("7/6/2026", 44.34, 1.00, "PERSONAL", "Uber - MSY Airport to InterContinental New Orleans (444 St Charles Ave), 15.96 mi/22 min, driver Kathryn, Visa -0733 (FNBO Evergreen)", "Taxi/Train/Bus", "HM Alpha - InterContinental New Orleans", ""),
    @("7/9/2026", 105.01, 1.00, "PERSONAL", "SW fare difference - return leg rebooked MSY-DAL-OMA (WN4419/WN1374) replacing MSY-STL-OMA, Visa -2674", "Air Fare", "HM Alpha - InterContinental New Orleans", ""),
    @("7/9/2026",  20.12, 1.00, "PERSONAL", "Sazerac Bar, New Orleans Airport (MSY) - sweet chili glazed chicken sandwich, CC surcharge, tip", "Lunch", "HM Alpha - InterContinental New Orleans", ""),
    @("7/9/2026",  25.61, 1.00, "PERSONAL", "Moe's Southwest Grill, DFW Airport (return layover) - chicken burrito bowl, Coke Zero, cookie, tip", "Dinner", "HM Alpha - InterContinental New Orleans", "")
)
$blankRowCount = 14

# =====================================================================
# SHEET 1: ER Detail
# =====================================================================
$s1 = $wb.Sheets.Item(1)
$s1.Name = "ER Detail"

$s1.Columns.Item(1).ColumnWidth = 10   # Date
$s1.Columns.Item(2).ColumnWidth = 6    # Day
$s1.Columns.Item(3).ColumnWidth = 10   # Amount
$s1.Columns.Item(4).ColumnWidth = 9    # Exchange Rate
$s1.Columns.Item(5).ColumnWidth = 11   # Amt in USD
$s1.Columns.Item(6).ColumnWidth = 10   # Paid by
$s1.Columns.Item(7).ColumnWidth = 48   # Details
$s1.Columns.Item(8).ColumnWidth = 12   # Category
$s1.Columns.Item(9).ColumnWidth = 30   # Billable/UF
$s1.Columns.Item(10).ColumnWidth = 10  # Charge Code

$r = $s1.Range("A1:J1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "UNIFOCUS EXPENSE REPORT  |  New Orleans - InterContinental (HM Alpha)"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$s1.Cells.Item(2,1).Value2 = "Start Date:"; $s1.Cells.Item(2,1).Font.Bold = $true
$s1.Cells.Item(2,2).Value2 = "7/6/2026"; $s1.Cells.Item(2,2).Interior.Color = $yellow; $s1.Cells.Item(2,2).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,4).Value2 = "End Date:"; $s1.Cells.Item(2,4).Font.Bold = $true
$s1.Cells.Item(2,5).Value2 = "7/9/2026"; $s1.Cells.Item(2,5).Interior.Color = $yellow; $s1.Cells.Item(2,5).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,7).Value2 = "NAME:"; $s1.Cells.Item(2,7).Font.Bold = $true
$s1.Cells.Item(2,8).Value2 = "Pete Castellano"; $s1.Cells.Item(2,8).Interior.Color = $lightBlue

$headers = @("Date","Day","Amount","Exchange Rate","Amt in USD","Paid by","Details","Category","Billable/UF","Charge Code")
for ($i = 0; $i -lt 10; $i++) {
    $c = $s1.Cells.Item(4, $i+1)
    $c.Value2 = $headers[$i]; $c.Font.Bold = $true
    $c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
    $c.WrapText = $true
}
$s1.Rows.Item(4).RowHeight = 28

$row = 5
foreach ($kr in $knownRows) {
    $bg = if (($row % 2) -eq 0) { $lightBlue } else { $white }
    $c1 = $s1.Cells.Item($row,1); $c1.Value2 = $kr[0]; $c1.NumberFormat = "m/d/yyyy"; $c1.Interior.Color = $bg
    $c2 = $s1.Cells.Item($row,2); $c2.Formula = "=TEXT(A$row,`"ddd`")"; $c2.Interior.Color = $bg; $c2.HorizontalAlignment = -4108
    $c3 = $s1.Cells.Item($row,3); $c3.Value2 = [double]$kr[1]; $c3.NumberFormat = '$#,##0.00'; $c3.HorizontalAlignment = -4152; $c3.Interior.Color = $bg
    $c4 = $s1.Cells.Item($row,4); $c4.Value2 = [double]$kr[2]; $c4.NumberFormat = "0.00"; $c4.HorizontalAlignment = -4108; $c4.Interior.Color = $bg
    $c5 = $s1.Cells.Item($row,5); $c5.Formula = "=C$row*D$row"; $c5.NumberFormat = '$#,##0.00'; $c5.HorizontalAlignment = -4152; $c5.Interior.Color = $bg
    $c6 = $s1.Cells.Item($row,6); $c6.Value2 = $kr[3]; $c6.HorizontalAlignment = -4108; $c6.Interior.Color = $bg
    $c7 = $s1.Cells.Item($row,7); $c7.Value2 = $kr[4]; $c7.Interior.Color = $bg
    $c8 = $s1.Cells.Item($row,8); $c8.Value2 = $kr[5]; $c8.HorizontalAlignment = -4108; $c8.Interior.Color = $bg
    $c9 = $s1.Cells.Item($row,9); $c9.Value2 = $kr[6]; $c9.Interior.Color = $bg
    $c10 = $s1.Cells.Item($row,10); $c10.NumberFormat = "@"; $c10.Value2 = $kr[7]; $c10.HorizontalAlignment = -4108; $c10.Interior.Color = $bg
    $row++
}

$blankStart = $row
for ($i = 0; $i -lt $blankRowCount; $i++) {
    $bg = if (($row % 2) -eq 0) { $lightBlue } else { $white }
    $c4 = $s1.Cells.Item($row,4); $c4.Value2 = 1.00; $c4.NumberFormat = "0.00"; $c4.HorizontalAlignment = -4108; $c4.Interior.Color = $bg
    $c5 = $s1.Cells.Item($row,5); $c5.Formula = "=C$row*D$row"; $c5.NumberFormat = '$#,##0.00'; $c5.HorizontalAlignment = -4152; $c5.Interior.Color = $bg
    $c2 = $s1.Cells.Item($row,2); $c2.Formula = "=IF(A$row=`"`",`"`",TEXT(A$row,`"ddd`"))"; $c2.Interior.Color = $bg; $c2.HorizontalAlignment = -4108
    foreach ($col in @(1,3,6,7,8,9,10)) { $s1.Cells.Item($row,$col).Interior.Color = $bg }
    $s1.Cells.Item($row,1).NumberFormat = "m/d/yyyy"
    $s1.Cells.Item($row,3).NumberFormat = '$#,##0.00'
    $s1.Cells.Item($row,10).NumberFormat = "@"
    $row++
}

# Data validation dropdowns (Paid by, Category) for known + blank rows
$paidByRange = $s1.Range("F5:F" + ($row-1))
$paidByRange.Validation.Delete()
$paidByRange.Validation.Add(3, 1, 1, "UF,PERSONAL,OTHER") | Out-Null

$categoryRange = $s1.Range("H5:H" + ($row-1))
$categoryRange.Validation.Delete()
$categoryRange.Validation.Add(3, 1, 1, "Air Fare,Taxi/Train/Bus,Car Rental,Gas/Tolls,Parking,Hotel,Bkfst,Lunch,Dinner,Phone/Data,Computer,Other,Postage,Misc") | Out-Null

$totalRow = $row
$s1.Cells.Item($totalRow,4).Value2 = "TOTAL"; $s1.Cells.Item($totalRow,4).Font.Bold = $true
$s1.Cells.Item($totalRow,4).Interior.Color = $darkBlue; $s1.Cells.Item($totalRow,4).Font.Color = $white
$tc = $s1.Cells.Item($totalRow,5)
$tc.Formula = "=SUM(E5:E" + ($totalRow-1) + ")"
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
foreach ($col in @(1,2,3,6,7,8,9,10)) { $s1.Cells.Item($totalRow,$col).Interior.Color = $darkBlue }

$rng = $s1.Range($s1.Cells.Item(4,1), $s1.Cells.Item($totalRow,10))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

$s1.Rows.Item(5).Select() | Out-Null
$excel.ActiveWindow.FreezePanes = $true

# =====================================================================
# SHEET 2: Notes (cheat-sheet quick reference, usable offline on the trip)
# =====================================================================
$s2 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s2.Name = "Notes"
$s2.Columns.Item(1).ColumnWidth = 100

$notes = @(
    "UNIFOCUS ER QUICK REFERENCE (from ER Cheat Sheet.pdf, dated 5/10/2021 - verify still current with Ralph if in doubt)",
    "",
    "Paid by: UF (Unifocus paid directly, e.g. their-booked airfare), PERSONAL (you paid), OTHER (company card).",
    "Category: Air Fare, Taxi/Train/Bus, Car Rental, Gas/Tolls, Parking, Hotel, Bkfst, Lunch, Dinner, Phone/Data, Computer, Other, Postage, Misc.",
    "  -> Meals are split by meal period (Bkfst/Lunch/Dinner), not one generic Meals line.",
    "Billable/UF column: enter the client name being billed (e.g. this report's HM Alpha - InterContinental New Orleans), or UF if not client-billable.",
    "Charge Code: leave BLANK when a client is being billed. Only use code 62 (consultant) if Unifocus itself is billed, not the client. Ralph watches this field closely.",
    "Exchange Rate: always 1.00 unless an international property - then use that day's rate.",
    "Amt in USD: auto-calculated (Amount x Exchange Rate) - never type into it directly.",
    "",
    "SUBMISSION (to Ralph Varble, confirmed 7/5/26):",
    "- New email with two attachments: (1) the completed Excel file, named with your last name, (2) receipts as separate attachments or one combined PDF.",
    "- Airfare: the original travel confirmation email is fine to attach as-is.",
    "- Meals/taxi: clear photo or scan, amount and date legible.",
    "- Uber/rideshare: forward the receipt email.",
    "- Mileage: PDF of the Google Maps route as proof.",
    "- Never forward the travel/ER email itself as the submission - always a fresh email.",
    "- Never put receipts inside the Excel file.",
    "- Never send receipts as Word docs - print to PDF first if needed.",
    "- Missing a receipt: a bank/card statement screenshot is acceptable.",
    "",
    "This workbook uses the same column order as Unifocus's own blank ER form (Date, Day, Amount, Exchange Rate,",
    "Amt in USD, Paid by, Details, Category, Billable/UF, Charge Code) so rows can be cut and pasted directly",
    "into the official template once it's opened."
)
$row = 1
foreach ($n in $notes) {
    $s2.Cells.Item($row,1).Value2 = $n
    if ($row -eq 1) { $s2.Cells.Item($row,1).Font.Bold = $true }
    $row++
}

# =====================================================================
$s1.Tab.Color = $midBlue
$s2.Tab.Color = $lightBlue
$s1.Activate()

if (Test-Path $outputPath) { Remove-Item $outputPath -Force }
$wb.SaveAs($outputPath, 51)
$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null

Write-Host "Saved: $outputPath"
