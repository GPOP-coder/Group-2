# Build The Moran, Houston Trip Expense Report - Unifocus ER Template format
# MakeReady Onsite Training - August 30-September 4, 2026
# Columns match Unifocus's own "Unifocus Expense Report" cheat sheet exactly,
# so rows can be cut-and-pasted directly into their blank official form.
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-08-30_2026-09-04_moran-houston-expense-report.xlsx"

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
# Known data ONLY (trip 8/30-9/4/26; hotel status UNKNOWN - see Notes/gaps;
# many meals and the return ground transport are NOT yet logged - see gaps)
# Date, Amount, ExchRate, Paid by, Details, Category, Billable/UF, Charge Code, Charge Source
# =====================================================================
$knownRows = @(
    @("8/30/2026", 254.40, 1.00, "PERSONAL", "SW OMA-HOU Hobby (BUKKAA): OMA dep 11:15am (WN4323) - HOU arr 1:30pm, seat 07A; Visa -2674", "Air Fare", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("8/30/2026",  58.94, 1.00, "PERSONAL", "Uber (driver Jose), HOU Airport (Hobby) -> The Moran Hotel, 24.97 mi/39 min - UberX `$34.81 + Airport Surcharge `$2.75 + Booking Fee `$7.76 + TX Regulatory Recovery Fee `$0.62 + tip `$13.00; Visa -2674", "Taxi/Train/Bus", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("8/30/2026",  55.86, 1.00, "PERSONAL", "Seasons 52, Houston TX (842 W Sam Houston Pkwy N) - dinner: Coke Zero, Restaurant Week Dinner-Medium; Check 39582-4542, Table 214; Visa -2674", "Dinner", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("8/31/2026",  24.62, 1.00, "PERSONAL", "bellagreen, Houston TX (800B Town and Country Blvd) - lunch: Blackened Shrimp Salad, fountain drink; Order 42 Dine-In; Visa -2674", "Lunch", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("9/1/2026",   23.48, 1.00, "PERSONAL", "The Board Room, Houston TX (inside The Moran Hotel, 800 Sorella Court) - lunch: Ancient Grain Bowl, City Centre employee discount applied; Table B9; Visa -2674", "Lunch", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("9/4/2026",   63.60, 1.00, "PERSONAL", "Uber (driver Justin), The Moran Hotel -> HOU Airport (Hobby), 24.00 mi/33 min - UberX `$35.66 + Airport Surcharge `$2.75 + Booking Fee `$8.92 + TX Regulatory Recovery Fee `$0.64 + Wait Time `$0.63 + tip `$15.00; Visa -2674", "Taxi/Train/Bus", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674"),
    @("9/4/2026",  365.40, 1.00, "PERSONAL", "SW HOU Hobby-OMA (BUGYTC): HOU dep 8:15am (WN3570) - OMA arr 10:25am, seat 07A; Visa -2674", "Air Fare", "MakeReady - Onsite Training The Moran Houston", "", "Visa -2674")
)
$blankRowCount = 15

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
$s1.Columns.Item(11).ColumnWidth = 3   # (spacer - blank, matches official form gap)
$s1.Columns.Item(12).ColumnWidth = 20  # Charge Source

$r = $s1.Range("A1:L1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "UNIFOCUS EXPENSE REPORT  |  The Moran, Houston - MakeReady Onsite Training"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$s1.Cells.Item(2,1).Value2 = "Start Date:"; $s1.Cells.Item(2,1).Font.Bold = $true
$s1.Cells.Item(2,2).Value2 = "8/30/2026"; $s1.Cells.Item(2,2).Interior.Color = $yellow; $s1.Cells.Item(2,2).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,4).Value2 = "End Date:"; $s1.Cells.Item(2,4).Font.Bold = $true
$s1.Cells.Item(2,5).Value2 = "9/4/2026"; $s1.Cells.Item(2,5).Interior.Color = $yellow; $s1.Cells.Item(2,5).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,7).Value2 = "NAME:"; $s1.Cells.Item(2,7).Font.Bold = $true
$s1.Cells.Item(2,8).Value2 = "Pete Castellano"; $s1.Cells.Item(2,8).Interior.Color = $lightBlue

$headers = @("Date","Day","Amount","Exchange Rate","Amt in USD","Paid by","Details","Category","Billable/UF","Charge Code","","Charge Source")
for ($i = 0; $i -lt 12; $i++) {
    $c = $s1.Cells.Item(4, $i+1)
    $c.Value2 = $headers[$i]; $c.Font.Bold = $true
    $c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
    $c.WrapText = $true
}
$s1.Cells.Item(4,11).Interior.Color = $white
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
    $c11 = $s1.Cells.Item($row,11); $c11.Interior.Color = $white
    $c12 = $s1.Cells.Item($row,12); $c12.Value2 = $kr[8]; $c12.Interior.Color = $bg
    $row++
}

$blankStart = $row
for ($i = 0; $i -lt $blankRowCount; $i++) {
    $bg = if (($row % 2) -eq 0) { $lightBlue } else { $white }
    $c4 = $s1.Cells.Item($row,4); $c4.Value2 = 1.00; $c4.NumberFormat = "0.00"; $c4.HorizontalAlignment = -4108; $c4.Interior.Color = $bg
    $c5 = $s1.Cells.Item($row,5); $c5.Formula = "=C$row*D$row"; $c5.NumberFormat = '$#,##0.00'; $c5.HorizontalAlignment = -4152; $c5.Interior.Color = $bg
    $c2 = $s1.Cells.Item($row,2); $c2.Formula = "=IF(A$row=`"`",`"`",TEXT(A$row,`"ddd`"))"; $c2.Interior.Color = $bg; $c2.HorizontalAlignment = -4108
    foreach ($col in @(1,3,6,7,8,9,10,12)) { $s1.Cells.Item($row,$col).Interior.Color = $bg }
    $s1.Cells.Item($row,11).Interior.Color = $white
    $s1.Cells.Item($row,1).NumberFormat = "m/d/yyyy"
    $s1.Cells.Item($row,3).NumberFormat = '$#,##0.00'
    $s1.Cells.Item($row,10).NumberFormat = "@"
    $row++
}

# Data validation dropdowns
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
foreach ($col in @(1,2,3,6,7,8,9,10,11,12)) { $s1.Cells.Item($totalRow,$col).Interior.Color = $darkBlue }

$rng = $s1.Range($s1.Cells.Item(4,1), $s1.Cells.Item($totalRow,12))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

$s1.Rows.Item(5).Select() | Out-Null
$excel.ActiveWindow.FreezePanes = $true

# =====================================================================
# SHEET 2: Notes
# =====================================================================
$s2 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s2.Name = "Notes"
$s2.Columns.Item(1).ColumnWidth = 100

$notes = @(
    "UNIFOCUS ER QUICK REFERENCE (from ER Cheat Sheet.pdf, dated 5/10/2021 - verify still current with Ralph if in doubt)",
    "",
    "Paid by: UF (Unifocus paid directly), PERSONAL (you paid), OTHER (company card).",
    "Category: Air Fare, Taxi/Train/Bus, Car Rental, Gas/Tolls, Parking, Hotel, Bkfst, Lunch, Dinner, Phone/Data, Computer, Other, Postage, Misc.",
    "  -> Meals are split by meal period (Bkfst/Lunch/Dinner), not one generic Meals line.",
    "Billable/UF: enter the client name (MakeReady - Onsite Training The Moran Houston), or UF if not client-billable.",
    "Charge Code: leave BLANK when a client is billed. Only use code 62 if Unifocus itself is billed.",
    "Exchange Rate: always 1.00 for domestic travel.",
    "",
    "SUBMISSION (to Shilpa Bhando):",
    "- New email with two attachments: (1) completed Excel, named with your last name, (2) receipts as separate attachments or one combined PDF.",
    "- Airfare: original travel confirmation email is fine.",
    "- Meals/taxi: clear photo, amount and date legible.",
    "",
    "THE MORAN-SPECIFIC NOTES - THIS ER IS COMPLETE (confirmed by Pete 9/7/26):",
    "- HOTEL: comped by the property - not on this ER.",
    "- MEALS: only 3 meals were ever charged to Visa -2674 (8/30 Seasons 52 dinner, 8/31 bellagreen lunch, 9/1 Board Room lunch) - all 3 included below. Every other meal on the trip was comped to the room.",
    "- RETURN GROUND TRANSPORT: Uber (driver Justin), Moran Hotel -> HOU Hobby, 9/4, `$63.60 - included below.",
    "- CASH: `$100 ATM withdrawal 8/30/26 (OMA) confirmed by Pete as trip cash for tips/non-reimbursable expenses - intentionally NOT on this ER.",
    "- RENTAL CAR: not used - trip was Uber-based throughout. N/A.",
    "- Source: travel/trips/2026-08-30_2026-09-04_moran-houston-receipt-log.md",
    "",
    "All 7 rows on this ER have a matching receipt archived in Personal Finance/Receipts/2026/."
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
