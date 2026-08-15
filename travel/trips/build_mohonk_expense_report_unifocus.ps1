# Build Mohonk Trip Expense Report - Unifocus ER Template format
# Columns match Unifocus's own "Unifocus Expense Report" cheat sheet exactly,
# so rows can be cut-and-pasted directly into their blank official form.
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-08-02_2026-08-09_mohonk-expense-report.xlsx"

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
$darkRed   = [long]0xC00000

# =====================================================================
# Known data (trip 8/2-8/9/26; return flight cancelled 8/7 for weather,
# rebooked by AA to 8/9 at no additional charge - weather-delay expenses
# 8/7-8/9 are billable to this Unifocus/Mohonk ER per the receipt log)
# Date, Amount, ExchRate, Paid by, Details, Category, Billable/UF, Charge Code
# =====================================================================
$knownRows = @(
    @("8/2/2026", 12.25, 1.00, "PERSONAL", "McDonald's mobile order, 568 Myrtle Ave, Boonton NJ - Bacon Quarter Pounder w/Cheese Large Meal (fries, unsweetened iced tea), Visa -8289", "Lunch", "Mohonk Mountain House", ""),
    @("8/2/2026", 272.10, 1.00, "PERSONAL", "SW OMA-ORD-EWR (AA GFLPYC), ticket 0012349569454 - Flight Credit [AA-2026-001]", "Air Fare", "Mohonk Mountain House", ""),
    @("8/2/2026", 39.70, 1.00, "PERSONAL", "SW OMA-ORD-EWR (AA GFLPYC), ticket 0012349569454 - Flight Credit [AA-2026-002]", "Air Fare", "Mohonk Mountain House", ""),
    @("8/2/2026", 146.40, 1.00, "PERSONAL", "AA OMA-ORD-EWR (AA GFLPYC), ticket 0012349569454 - cash balance after flight credits, Visa -2674", "Air Fare", "Mohonk Mountain House", ""),
    @("8/2/2026", 468.21, 1.00, "PERSONAL", "Budget rental car, VW Atlas Cross Sport AWD, agreement 266355924, EWR pickup 8/2 2:45PM - actual return 8/7 3:37PM, 218 mi driven (odometer 3890-4108), Visa -2674, Net Charges confirmed USD 468.21, Total Due 0.00 - final receipt matches estimate exactly, no variance", "Car Rental", "Mohonk Mountain House", ""),
    @("8/7/2026", 12.63, 1.00, "PERSONAL", "Taco Bell #040713, 238 Main St, New Paltz NY (senior discount applied), Visa -2674", "Lunch", "Mohonk Mountain House", ""),
    @("8/7/2026", 29.28, 1.00, "PERSONAL", "QuickChek #146, Whippany NJ - gas, rental car, 7.396 gal @ $3.959/gal, Visa -2674", "Gas/Tolls", "Mohonk Mountain House", ""),
    @("8/7/2026", 447.20, 1.00, "PERSONAL", "AA EWR-ORD-OMA (AA JMTNHX), ticket 0012362823941 - cancelled 8/7 for weather, rebooked by AA to 8/9 at no additional charge, Visa -2674", "Air Fare", "Mohonk Mountain House", ""),
    @("8/7/2026", 512.00, 1.00, "PERSONAL", "Hotel Seville Nomad (weather-delay hotel, EWR cancellation), 2 nights, Hyatt folio 2529375976, Hotels.com itinerary 73517117133488, Visa -2674", "Hotel", "Mohonk Mountain House", ""),
    @("8/7/2026", 129.14, 1.00, "PERSONAL", "Uber, EWR Terminal A to Hotel Seville Nomad (weather-delay), UberXL, driver Oleg, 17.82 mi/54 min, Visa -2674", "Taxi/Train/Bus", "Mohonk Mountain House", ""),
    @("8/7/2026", 77.32, 1.00, "PERSONAL", "Scarpetta/LDV Hospitality (88 Madison Ave, NYC) - dinner during weather delay, Restaurant Week prix fixe, Visa -2674", "Dinner", "Mohonk Mountain House", ""),
    @("8/8/2026", 7.60, 1.00, "PERSONAL", "McDonald's mobile order (401 Park Ave S, NYC) - breakfast during weather delay, Egg McMuffin + large unsweetened iced tea, Visa -8289", "Bkfst", "Mohonk Mountain House", ""),
    @("8/8/2026", 33.62, 1.00, "PERSONAL", "Tallow - Shaver Hall (424 5th Ave, NYC) - dinner take-out during weather delay, full billable meal value ($28.85 food + $4.77 tip); -$28.85 credit applied, net card charge $4.77, Visa -7552 (WF Active Cash)", "Dinner", "Mohonk Mountain House", ""),
    @("8/8/2026", 4.96, 1.00, "PERSONAL", "Chick Chick at Shaver Hall (424 5th Ave, NYC) - drink after Tallow dinner, Visa -2674", "Other", "Mohonk Mountain House", ""),
    @("8/2/2026", 3.74, 1.00, "PERSONAL", "E-ZPass NY toll near New Paltz, NY (outbound, EWR to Mohonk) - Temporary Travel Account ending xxxxxx8500, paid 8/8/26, confirmed by phone with E-ZPass NY as the only toll registered on the rental (no return-leg toll), Visa -2674", "Gas/Tolls", "Mohonk Mountain House", ""),
    @("8/9/2026", 103.26, 1.00, "PERSONAL", "Hotel Seville Nomad - mandatory fees due at property (Destination Fee $45/night x2 + NYC taxes), Hyatt folio 2529375976, Visa -2674", "Hotel", "Mohonk Mountain House", ""),
    @("8/9/2026", 113.65, 1.00, "PERSONAL", "Uber, Hotel Seville Nomad to EWR Terminal A (weather-delay return), UberX, driver Muhammad, 19.45 mi/31 min, Visa -2674", "Taxi/Train/Bus", "Mohonk Mountain House", ""),
    @("8/9/2026", 16.00, 1.00, "PERSONAL", "McDonald's #26777 (ORD Terminal 3) - breakfast, layover on return home, Visa -2674", "Bkfst", "Mohonk Mountain House", ""),
    @("8/2/2026", 34.50, 1.00, "PERSONAL", "Omaha Eppley Airfield (OMA) short-term parking, entry 8/2 05:41 - exit 8/3 07:46, receipt 13366 - paid by Brian Brazeal (Capital One Visa -9323) who borrowed Pete's car from OMA for the week; Pete to reimburse Brian, claimed on ER", "Parking", "Mohonk Mountain House", "")
)
$blankRowCount = 10

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
$s1.Columns.Item(9).ColumnWidth = 22   # Billable/UF
$s1.Columns.Item(10).ColumnWidth = 10  # Charge Code

$r = $s1.Range("A1:J1"); $r.Merge()
$c = $s1.Cells.Item(1,1)
$c.Value2 = "UNIFOCUS EXPENSE REPORT  |  Mohonk Mountain House"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$s1.Cells.Item(2,1).Value2 = "Start Date:"; $s1.Cells.Item(2,1).Font.Bold = $true
$s1.Cells.Item(2,2).Value2 = "8/2/2026"; $s1.Cells.Item(2,2).Interior.Color = $yellow; $s1.Cells.Item(2,2).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,4).Value2 = "End Date:"; $s1.Cells.Item(2,4).Font.Bold = $true
$s1.Cells.Item(2,5).Value2 = "8/9/2026"; $s1.Cells.Item(2,5).Interior.Color = $yellow; $s1.Cells.Item(2,5).NumberFormat = "m/d/yyyy"
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
    $c3 = $s1.Cells.Item($row,3)
    if ($null -ne $kr[1]) { $c3.Value2 = [double]$kr[1] }
    $c3.NumberFormat = '$#,##0.00'; $c3.HorizontalAlignment = -4152; $c3.Interior.Color = $bg
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
# SHEET 2: SUMMARY
# =====================================================================
$s3 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s3.Name = "Summary"

$s3.Columns.Item(1).ColumnWidth = 22
$s3.Columns.Item(2).ColumnWidth = 40
$s3.Columns.Item(3).ColumnWidth = 14
$s3.Columns.Item(4).ColumnWidth = 12
$s3.Columns.Item(5).ColumnWidth = 12

$r = $s3.Range("A1:E1"); $r.Merge()
$c = $s3.Cells.Item(1,1)
$c.Value2 = "MOHONK MOUNTAIN HOUSE TRIP EXPENSE REPORT  -  AUG 2 to AUG 9, 2026"
$c.Font.Bold = $true; $c.Font.Size = 14; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s3.Rows.Item(1).RowHeight = 24

$infoItems = @(
    @("Traveler", "Pete Castellano"),
    @("Purpose", "Onsite standards review + admin/manager training (billable to Unifocus)"),
    @("Dates", "Aug 2 - Aug 9, 2026 (7 nights - trip extended 2 nights due to AA weather cancellation at EWR on 8/7)"),
    @("Property", "Mohonk Mountain House"),
    @("Compiled", "August 13, 2026"),
    @("Note", "Hotel at Mohonk itself comped by property (Room 165, confirmation 7833637490-1) - not included in reimbursement total. Return flight cancelled 8/7 for weather; AA rebooked to 8/9 at no additional fare. All weather-delay expenses (hotel, Uber, meals 8/7-8/9) are billable on this ER per trip receipt log.")
)
$row = 2
foreach ($i in $infoItems) {
    $s3.Cells.Item($row,1).Value2 = $i[0]; $s3.Cells.Item($row,1).Font.Bold = $true
    $r2 = $s3.Range($s3.Cells.Item($row,2), $s3.Cells.Item($row,5)); $r2.NumberFormat = "@"; $r2.Merge()
    $s3.Cells.Item($row,2).Value2 = $i[1]
    $row++
}
$row++

# ---- SUMMARY BY CATEGORY ----
$r = $s3.Range($s3.Cells.Item($row,1), $s3.Cells.Item($row,5)); $r.Merge()
$c = $s3.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY CATEGORY"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$catHdrs = @("Category","Amount","# Items")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s3.Cells.Item($row,$i+1); $c.Value2 = $catHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++

$cats = @(
    @("Air Fare",         905.40, 4),
    @("Car Rental",       468.21, 1),
    @("Hotel",            615.26, 2),
    @("Taxi/Train/Bus",   242.79, 2),
    @("Dinner",           110.94, 2),
    @("Lunch",              24.88, 2),
    @("Bkfst",              23.60, 2),
    @("Gas/Tolls",          33.02, 2),
    @("Parking",            34.50, 1),
    @("Other",               4.96, 1)
)
$catStart = $row
foreach ($cat in $cats) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $s3.Cells.Item($row,1).Value2 = $cat[0]; $s3.Cells.Item($row,1).Interior.Color = $bg
    $s3.Cells.Item($row,2).Value2 = [double]$cat[1]; $s3.Cells.Item($row,2).NumberFormat = '$#,##0.00'
    $s3.Cells.Item($row,2).HorizontalAlignment = -4152; $s3.Cells.Item($row,2).Interior.Color = $bg
    $s3.Cells.Item($row,3).Value2 = [int]$cat[2]; $s3.Cells.Item($row,3).HorizontalAlignment = -4108
    $s3.Cells.Item($row,3).Interior.Color = $bg
    $row++
}
$s3.Cells.Item($row,1).Value2 = "TOTAL REIMBURSABLE (known)"; $s3.Cells.Item($row,1).Font.Bold = $true
$s3.Cells.Item($row,1).Interior.Color = $darkBlue; $s3.Cells.Item($row,1).Font.Color = $white
$tc = $s3.Cells.Item($row,2)
$tc.Formula = '=SUM(B' + $catStart + ':B' + ($row-1) + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
$s3.Cells.Item($row,3).Interior.Color = $darkBlue
$rng = $s3.Range($s3.Cells.Item($catStart-1,1), $s3.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# ---- SUMMARY BY PAYMENT TYPE ----
$r = $s3.Range($s3.Cells.Item($row,1), $s3.Cells.Item($row,5)); $r.Merge()
$c = $s3.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY PAYMENT TYPE"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$ptHdrs = @("Payment Type","Description","Amount")
for ($i = 0; $i -lt 3; $i++) {
    $c = $s3.Cells.Item($row,$i+1); $c.Value2 = $ptHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++
$ptStart = $row

# Payment type, description, amount (traced from mohonk-receipt-log.md card column)
$paymentTypes = @(
    @("-2674",     "Visa SW Rapid Rewards+ (flight cash balance, return flight, Taco Bell, gas, hotel + fees, both Ubers, Scarpetta, Chick Chick, E-ZPass, ORD breakfast, Budget rental car)", 2063.79),
    @("SW Credit", "Southwest Flight Credit (outbound)",                                                                                                                      311.80),
    @("-8289",     "Visa (McDonald's Boonton NJ + McDonald's NYC breakfast)",                                                                                                   19.85),
    @("-7552",     "Visa WF Active Cash (Tallow - Shaver Hall dinner, full billable value; net card charge was $4.77 after credit)",                                            33.62),
    @("-9323",     "Capital One Visa (Brian Brazeal) - OMA short-term parking, Pete to reimburse Brian",                                                                        34.50)
)
foreach ($pt in $paymentTypes) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $c1 = $s3.Cells.Item($row,1); $c1.NumberFormat = "@"; $c1.Value2 = [string]$pt[0]; $c1.Interior.Color = $bg; $c1.HorizontalAlignment = -4108
    $c2 = $s3.Cells.Item($row,2); $c2.Value2 = [string]$pt[1]; $c2.Interior.Color = $bg
    $c3 = $s3.Cells.Item($row,3); $c3.Value2 = [double]$pt[2]; $c3.NumberFormat = '$#,##0.00'; $c3.HorizontalAlignment = -4152; $c3.Interior.Color = $bg
    $row++
}
$ptEndRow = $row - 1
$s3.Cells.Item($row,1).Value2 = "TOTAL"; $s3.Cells.Item($row,1).Font.Bold = $true
$s3.Cells.Item($row,1).Interior.Color = $darkBlue; $s3.Cells.Item($row,1).Font.Color = $white
$s3.Cells.Item($row,2).Interior.Color = $darkBlue
$tc = $s3.Cells.Item($row,3)
$tc.Formula = '=SUM(C' + $ptStart + ':C' + $ptEndRow + ')'
$tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
$tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
$rng = $s3.Range($s3.Cells.Item($ptStart-1,1), $s3.Cells.Item($row,3))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# ---- OPEN ITEMS ----
$r = $s3.Range($s3.Cells.Item($row,1), $s3.Cells.Item($row,5)); $r.Merge()
$c = $s3.Cells.Item($row,1)
$c.Value2 = "OPEN ITEMS BEFORE SUBMISSION"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$row++
$openItems = @(
    "Tolls confirmed closed 8/13/26: Pete called E-ZPass NY directly - $3.74 near New Paltz, NY (outbound, 8/2) was the only toll registered on the rental; no return-leg toll.",
    "Rental car final charge and card not yet confirmed against Budget drop-off receipt (est. $468.21 used above).",
    "Excluded as not billable: Unlimited Biking NYC Summer Streets ($0, personal activity) and Zaro's #4033 EWR bottled water ($7.08, flagged 'likely not claiming' in receipt log)."
)
foreach ($oi in $openItems) {
    $s3.Cells.Item($row,1).Value2 = "- " + $oi
    $r3 = $s3.Range($s3.Cells.Item($row,1), $s3.Cells.Item($row,5)); $r3.Merge()
    $row++
}

# =====================================================================
# SHEET 3: Notes (cheat-sheet quick reference, usable offline on the trip)
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
    "Billable/UF column: enter the client name being billed (Mohonk Mountain House for this report), or UF if not client-billable.",
    "Charge Code: leave BLANK when a client is being billed. Only use code 62 (consultant) if Unifocus itself is billed, not the client. Ralph watches this field closely.",
    "Exchange Rate: always 1.00 unless an international property - then use that day's rate.",
    "Amt in USD: auto-calculated (Amount x Exchange Rate) - never type into it directly.",
    "",
    "SUBMISSION:",
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
    "into the official template once it's opened.",
    "",
    "MOHONK-SPECIFIC NOTES:",
    "- Mohonk hotel stay itself was comped by the property - not on this ER.",
    "- Weather-delay expenses (Hotel Seville Nomad, Ubers, meals 8/7-8/9) are billable here because the return flight",
    "  cancellation was outside Pete's control and directly extended the trip; confirm this framing with Ralph if asked.",
    "- Tolls resolved 8/13/26: Pete called E-ZPass NY directly, confirmed the $3.74 New Paltz NY charge (8/2, outbound) was the only toll on the rental."
)
$row = 1
foreach ($n in $notes) {
    $s2.Cells.Item($row,1).Value2 = $n
    if ($row -eq 1) { $s2.Cells.Item($row,1).Font.Bold = $true }
    $row++
}

# =====================================================================
# Sheet order: Summary | ER Detail | Notes
# =====================================================================
$s3.Move($wb.Sheets.Item(1))

$s3.Activate()
$s3.Tab.Color = $darkBlue
$s1.Tab.Color = $midBlue
$s2.Tab.Color = $lightBlue

if (Test-Path $outputPath) { Remove-Item $outputPath -Force }
$wb.SaveAs($outputPath, 51)
$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null

Write-Host "Saved: $outputPath"
