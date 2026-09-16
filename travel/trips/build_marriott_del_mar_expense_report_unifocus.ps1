# Build Marriott Del Mar, San Diego Trip Expense Report - Unifocus ER Template format
# HM Alpha Onsite Training - September 7-12, 2026 (extended one personal day)
# Columns match Unifocus's own "Unifocus Expense Report" cheat sheet exactly,
# so rows can be cut-and-pasted directly into their blank official form.
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-09-07_2026-09-12_marriott-del-mar-expense-report.xlsx"

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
# Known data ONLY (trip 9/7-9/12/26; hotel comped including extended day;
# $57 change fee is personal, not included - see Notes)
# Date, Amount, ExchRate, Paid by, Details, Category, Billable/UF, Charge Code, Charge Source
# =====================================================================
$knownRows = @(
    @("9/7/2026", 336.40, 1.00, "PERSONAL", "SW OMA-SAN (AHUTML): OMA dep 6:00pm (WN3069) - SAN arr 7:10pm, seat 09C; Visa -2674", "Air Fare", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674"),
    @("9/7/2026",  68.83, 1.00, "PERSONAL", "Uber, SAN Airport -> Marriott Del Mar, 22.97 mi/44 min - UberX `$46.81 + Access for All `$0.10 + Booking Fee `$3.31 + CA Driver Benefits `$0.52 + Clean Miles Fee `$0.09 + SAN Pickup Surcharge `$5.00 + tip `$13.00; Visa -2674", "Taxi/Train/Bus", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674"),
    @("9/12/2026", 62.95, 1.00, "PERSONAL", "Uber, Marriott Del Mar -> SAN Airport, 17.70 mi/21 min - UberX `$39.09 + Access for All `$0.10 + Booking Fee `$5.15 + CA Driver Benefits `$0.52 + Clean Miles Fee `$0.09 + SAN Pickup Surcharge `$5.00 + tip `$13.00; Visa -2674", "Taxi/Train/Bus", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674"),
    @("9/12/2026", 392.40, 1.00, "PERSONAL", "SW SAN-OMA (BEIJHG, changed from WN3440 to WN0734): SAN dep 12:15pm - OMA arr 5:30pm, seat 02F; Visa -2674. Reimbursable fare portion of the round trip - see next line for the change fee.", "Air Fare", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674"),
    @("9/12/2026",   0.00, 1.00, "PERSONAL", "SW change fee, ticket #5262199565846 (WN0734): `$57.00, Visa -2674 - PAID PERSONALLY, NOT CLAIMED. Shown for documentation only, to confirm the return flight was actually completed 9/12 (see Notes tab for full reasoning).", "Air Fare", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674"),
    @("9/12/2026",  32.94, 1.00, "PERSONAL", "Uber, OMA Airport -> Home (Bellevue NE), 14.01 mi/18 min - UberX `$19.33 + Booking Fee `$3.36 + Airport Surcharge `$3.25 + tip `$7.00; Visa -2674", "Taxi/Train/Bus", "HM Alpha - Onsite Training Marriott Del Mar", "", "Visa -2674")
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
$c.Value2 = "UNIFOCUS EXPENSE REPORT  |  Marriott Del Mar, San Diego - HM Alpha Onsite Training"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$s1.Cells.Item(2,1).Value2 = "Start Date:"; $s1.Cells.Item(2,1).Font.Bold = $true
$s1.Cells.Item(2,2).Value2 = "9/7/2026"; $s1.Cells.Item(2,2).Interior.Color = $yellow; $s1.Cells.Item(2,2).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,4).Value2 = "End Date:"; $s1.Cells.Item(2,4).Font.Bold = $true
$s1.Cells.Item(2,5).Value2 = "9/12/2026"; $s1.Cells.Item(2,5).Interior.Color = $yellow; $s1.Cells.Item(2,5).NumberFormat = "m/d/yyyy"
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
    "Billable/UF: enter the client name (HM Alpha - Onsite Training Marriott Del Mar), or UF if not client-billable.",
    "Charge Code: leave BLANK when a client is billed. Only use code 62 if Unifocus itself is billed.",
    "Exchange Rate: always 1.00 for domestic travel.",
    "",
    "SUBMISSION (to Shilpa Bhando):",
    "- New email with two attachments: (1) completed Excel, named with your last name, (2) receipts as separate attachments or one combined PDF.",
    "- Airfare: original travel confirmation email is fine.",
    "- Meals/taxi: clear photo, amount and date legible.",
    "",
    "MARRIOTT DEL MAR-SPECIFIC NOTES - THIS ER IS COMPLETE (confirmed by Pete 9/16/26):",
    "- HOTEL: comped by the property, including the extended Friday 9/11 night (Mark Sternagel, GM) - not on this ER.",
    "- TRIP EXTENDED: Pete moved his return flight from Fri 9/11 to Sat 9/12 to see his uncle, a personal side trip. The `$392.40 original fare is claimed (reimbursable). The `$57.00 Southwest change fee for that move is PERSONAL and is shown as a `$0.00 line on this ER purely for documentation - to confirm the return flight was actually completed on 9/12 (ticket #5262199565846, WN0734) - not claimed for reimbursement.",
    "- MEALS: none - all flights were direct/nonstop, no meal receipts generated.",
    "- OUTBOUND GROUND TRANSPORT: Uber, SAN Airport -> Marriott Del Mar, 9/7, `$68.83 - included below.",
    "- RETURN GROUND TRANSPORT: Uber, Marriott Del Mar -> SAN Airport, 9/12, `$62.95 - included below.",
    "- HOME AIRPORT TRANSPORT: Uber, OMA Airport -> home (Bellevue), 9/12, `$32.94 - included below per standing rule (in lieu of parking).",
    "- RENTAL CAR: not used - trip was Uber-based throughout. N/A.",
    "- Source: travel/trips/2026-09-07_2026-09-11_marriott-del-mar-receipt-log.md",
    "",
    "All 6 rows on this ER have a matching receipt archived in Personal Finance/Receipts/2026/ (the `$0.00 change-fee row included, for documentation)."
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
