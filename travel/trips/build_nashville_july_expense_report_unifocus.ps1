# Build Nashville July Trip Expense Report - Unifocus ER Template format
# HMAlpha Corporate Admin Training — July 13-16, 2026
# Columns match Unifocus's own "Unifocus Expense Report" cheat sheet exactly,
# so rows can be cut-and-pasted directly into their blank official form.
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-07-13_2026-07-16_nashville-expense-report.xlsx"

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
# Known data
# Date, Amount, ExchRate, Paid by, Details, Category, Billable/UF, Charge Code
# =====================================================================
$knownRows = @(
    @("7/13/2026", 888.41, 1.00, "PERSONAL", "SW round-trip OMA-BNA (BEU2FS): outbound OMA-DEN-BNA (WN2060/WN570); return BNA-STL-OMA 7/16 (WN770/WN4912) - RR Visa -2674", "Air Fare", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/13/2026",  21.59, 1.00, "PERSONAL", "445 Bar 14, Omaha Airport (OMA) - sausage/egg/cheese sandwich, Coke Zero, tip; Visa -7552", "Bkfst", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/13/2026",  38.38, 1.00, "PERSONAL", "HMSHost Great Divide C, Denver Airport (DEN) - bison burger, medium fries, soda, tip; Chase VISA -2674", "Lunch", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/13/2026",  32.58, 1.00, "PERSONAL", "Uber, BNA Airport -> The Nashville Reserve (301 Rosa L Parks Ave) - UberX, 9.32 mi/19 min, driver Yoseph; Visa -0733 (FNBO Evergreen)", "Taxi/Train/Bus", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/13/2026",  83.64, 1.00, "PERSONAL", "Earls Nashville Yards, 26 Platform Way South, Nashville TN - crispy tuna, little gem caesar, iced tea, toffee cake, tip; Chase VISA -2674", "Dinner", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/13/2026", 694.05, 1.00, "PERSONAL", "The Nashville Reserve, 301 Rosa L Parks Ave Nashville TN - 3 nights (7/13-7/16), Studio Suite; Hotels.com itinerary 73493828457425; Visa -2785", "Hotel", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/14/2026",  20.63, 1.00, "PERSONAL", "Nick The Greek, 943 Church St, Nashville TN - beef/lamb gyro bowl, pita & drink, tip; Chase VISA -2674", "Lunch", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/14/2026",  22.53, 1.00, "PERSONAL", "Assembly Food Hall (Honey Fire Barbeque), 5055 Broadway Pl, Nashville TN - chicken sandwich, baked beans, fountain drink, tip; Chase VISA -2674", "Dinner", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/15/2026",  60.52, 1.00, "PERSONAL", "Sixty Vines, 5055 Broadway Pl Ste 3200, Nashville TN - pan roasted chicken, broccolini, Coke, sticky toffee cake, tip; Chase VISA -2674", "Dinner", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/16/2026",  26.86, 1.00, "PERSONAL", "HMSHost Yazoo Beer Cart C, Nashville Airport (BNA) - chicken Caesar wrap, Coke Zero, Reese's King Size; Chase VISA -2674", "Lunch", "HM Alpha - Corporate Admin Training Nashville", ""),
    @("7/16/2026",  30.48, 1.00, "PERSONAL", "Three Kings (HMSHost), Lambert-St. Louis International Airport (STL) - grilled chicken sandwich (fries, no lettuce), iced tea, tip; Chase VISA -2674", "Dinner", "HM Alpha - Corporate Admin Training Nashville", "")
)
$blankRowCount = 16

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
$c.Value2 = "UNIFOCUS EXPENSE REPORT  |  Nashville - HMAlpha Corporate Admin Training"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkBlue; $c.HorizontalAlignment = -4108
$s1.Rows.Item(1).RowHeight = 22

$s1.Cells.Item(2,1).Value2 = "Start Date:"; $s1.Cells.Item(2,1).Font.Bold = $true
$s1.Cells.Item(2,2).Value2 = "7/13/2026"; $s1.Cells.Item(2,2).Interior.Color = $yellow; $s1.Cells.Item(2,2).NumberFormat = "m/d/yyyy"
$s1.Cells.Item(2,4).Value2 = "End Date:"; $s1.Cells.Item(2,4).Font.Bold = $true
$s1.Cells.Item(2,5).Value2 = "7/16/2026"; $s1.Cells.Item(2,5).Interior.Color = $yellow; $s1.Cells.Item(2,5).NumberFormat = "m/d/yyyy"
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
foreach ($col in @(1,2,3,6,7,8,9,10)) { $s1.Cells.Item($totalRow,$col).Interior.Color = $darkBlue }

$rng = $s1.Range($s1.Cells.Item(4,1), $s1.Cells.Item($totalRow,10))
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
    "Billable/UF: enter the client name (HM Alpha - Corporate Admin Training Nashville), or UF if not client-billable.",
    "Charge Code: leave BLANK when a client is billed. Only use code 62 if Unifocus itself is billed.",
    "Exchange Rate: always 1.00 for domestic travel.",
    "",
    "SUBMISSION (to Ralph Varble):",
    "- New email with two attachments: (1) completed Excel, named with your last name, (2) receipts as separate attachments or one combined PDF.",
    "- Airfare: original travel confirmation email is fine.",
    "- Meals/taxi: clear photo, amount and date legible.",
    "- Extra tip noted non-reimbursable (445 Bar 14, 7/13): only $21.59 claimed; $3.60 cash tip excluded.",
    "",
    "OPEN ITEMS — add as receipts come in:",
    "- Hotel (3 nights, 7/13-7/16) — The Nashville Reserve, $694.05 total (Visa -2785) ADDED",
    "- Ground transport BNA airport → hotel (7/13) — Uber, $32.58 (Visa -0733 FNBO Evergreen) ADDED",
    "- Ground transport hotel → BNA airport (7/16) still open",
    "- Lunch 7/13 — HMSHost Great Divide C, Denver Airport (DEN), $38.38 (Chase VISA -2674) ADDED",
    "- Dinner 7/13 — Earls Nashville Yards, $83.64 (Chase VISA -2674) ADDED",
    "- Lunch 7/14 — Nick The Greek, Nashville, $20.63 (Chase VISA -2674) ADDED",
    "- Dinner 7/14 — Assembly Food Hall (Honey Fire BBQ), Nashville, $22.53 (Chase VISA -2674) ADDED",
    "- Dinner 7/15 — Sixty Vines, Nashville, $60.52 (Chase VISA -2674) ADDED; no breakfast or lunch 7/15",
    "- Lunch 7/16 — HMSHost Yazoo Beer Cart C, Nashville Airport (BNA), $26.86 (Chase VISA -2674) ADDED",
    "- Shipley Do-Nuts, 7/16, $4.37 cash — EXCLUDED (cash snack, Pete flagged)",
    "- Dinner 7/16 — Three Kings (HMSHost), STL Airport layover, $30.48 (Chase VISA -2674) ADDED"
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
