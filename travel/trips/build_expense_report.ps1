# Build Pensacola Trip Expense Report Excel file
$outputPath = "C:\Users\peter\Documents\Group-2\travel\trips\2026-05-15_2026-06-01_pensacola-expense-report.xlsx"

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

# =====================================================================
# DATA ARRAYS
# =====================================================================

# Date, Description, Category, Amount, Card, Reimb?
# Meals removed per accountant guidance (Mark Starkweather, 6/8/26):
# meals & personal groceries not deductible for Schedule E rental reporting.
#
# FUTURE MEAL CATEGORIES: Use Breakfast, Lunch, Dinner (not a generic
# Meals category). When unclear from a receipt, ask the traveler which
# meal period the expense applies to before coding it.
$expenses = @(
    @("5/15/2026","SW OMA-STL-MCO (CMIJAL)","Air Fare",467.20,"-2674","Yes"),
    @("5/17/2026","Budget Rental, Orlando FL (5/15 to 5/17)","Car Rental",94.12,"-0733","Yes"),
    @("5/17/2026","Shell, Ocoee FL","Gas/Tolls",16.75,"-2674","Yes"),
    @("5/17/2026","DL MCO-ATL-PNS (H543QZ) - exchange credit [DL-2026-EXCH-001, prior -0733]","Air Fare",227.30,"-0733","Yes"),
    @("5/17/2026","DL MCO-ATL-PNS (H543QZ) - DL eCredit [DL-2026-001, ESS trip]","Air Fare",145.40,"Cash","Yes"),
    @("5/17/2026","DL MCO-ATL-PNS (H543QZ) - card balance","Air Fare",43.50,"-0733","Yes"),
    @("5/17/2026","Delta Excess Baggage (H543QZ)","Air Fare",45.00,"-2674","Yes"),
    @("5/19/2026","Dollar General #9271, Pensacola FL - utility knife + packing tape","Other",5.91,"-7552","Yes"),
    @("5/21/2026","Perdido Pack & Ship, Pensacola FL","Postage",16.71,"-0733","Yes"),
    @("5/23/2026","Murphy USA, Pensacola FL","Gas/Tolls",67.82,"-0733","Yes"),
    @("5/23/2026","Perdido Key Resort (5/17 to 5/23), Pensacola FL","Hotel",915.65,"-0733","Yes"),
    @("5/24/2026","Dollar General #18397, Pensacola FL - Sharpie marker","Other",3.23,"-8289","Yes"),
    @("6/1/2026","Budget Rental, Pensacola FL (5/17 to 6/1)","Car Rental",1551.74,"-2674","Yes"),
    @("6/1/2026","Airbnb/Landing, Pensacola FL (5/23 to 6/1)","Hotel",1898.45,"-2674","Yes"),
    @("6/1/2026","SW Baggage Fee PNS-OMA (AU84MN)","Air Fare",55.00,"-7552","Yes"),
    @("6/1/2026","Circle K, Pensacola FL - rental car fuel","Gas/Tolls",36.64,"-7552","Yes"),
    @("6/1/2026","Omaha Airport - cart rental","Misc",6.00,"-7552","Yes"),
    @("6/1/2026","SW PNS-BNA-STL-OMA (AU84MN) - SW travel credit [SW-2026-001]","Air Fare",442.20,"-2674","Yes"),
    @("6/1/2026","SW PNS-BNA-STL-OMA (AU84MN) - card balance","Air Fare",51.30,"-2674","Yes")
)

# ALCOHOL SPLIT METHODOLOGY (for future Unifocus/client expense reports):
# When a receipt contains both food and alcohol, split the total proportionally
# using itemized receipt line amounts.
#   Reimbursable (food): itemized food subtotal
#   Excluded (alcohol): itemized alcohol subtotal
# Always keep the itemized receipt -- the split is only as defensible as the
# paper trail. Label excluded entries with "(proportional)" to indicate a split.
# Drinks-only receipts go entirely to Excluded.

# Date, Description, Category, Amount, Card, Reason
$excluded = @(
    ,@("5/31/2026","Publix, Pensacola FL - hair gel","Personal",20.84,"-8289","Personal")
)

# Date, Flight, Credit ID, Airline Ref #, Source Card, Amount, Source Description, Reduces Card
#   Source Card     = card that originally paid for the ticket that earned this credit
#   Reduces Card    = card in $expenses whose stated amount includes this credit portion;
#                     the credit is subtracted from that card's net charge in the summary
# Flight credits are shown as a payment type in SUMMARY BY PAYMENT TYPE.
# The Reduces Card logic ensures card net amounts + credits = total reimbursable.
$credits = @(
    @("6/1/2026",  "SW PNS-BNA-STL-OMA (AU84MN)",           "SW-2026-001",      "",              "Accumulated SW credits", 442.20, "SW Travel Credits (AEF9KY cancelled 2/12/26); traces to AZXXWK OMA-MIA (cancelled 12/15/25); 40.71 from -2674, remainder prior SW credits", ""),
    @("5/17/2026", "DL MCO-ATL-PNS (H543QZ) - eCredit",     "DL-2026-001",      "0060219253395", "No card (ESS trip)",     145.40, "Delta eCredit from ESS OMA-PHL disruption 5/19/25; 700 VOL comp issued to Pete personally from ESS-funded trip",                             ""),
    @("5/17/2026", "DL MCO-ATL-PNS (H543QZ) - exchange",    "DL-2026-EXCH-001", "",              "-0733",                  227.30, "Prior DL ticket on -0733 exchanged for H543QZ; original purchase date TBD - check -0733 statement history",                                   "")
)

# Card display names (used in SUMMARY BY PAYMENT TYPE)
$cardNames = @{
    "-2674" = "VISA SW Rapid Rewards+"
    "-0733" = "VISA Personal"
    "-7552" = "VISA WF Active Cash"
    "-8289" = "VISA WF Debit"
    "-2409" = "Target Debit Card"
    "Cash"  = "Cash"
}

# Compute reimbursed per card from $expenses (full ticket values incl. credit-covered portions)
$cardReimb = @{}
foreach ($e in $expenses) {
    $card = $e[4]
    if (-not $cardReimb.ContainsKey($card)) { $cardReimb[$card] = 0.0 }
    if ($e[5] -eq "Yes") { $cardReimb[$card] += [double]$e[3] }
}
# Subtract credits to get actual net card charges for reimbursement
foreach ($cr in $credits) {
    $rc = $cr[7]
    if ($rc -and $rc -ne "" -and $cardReimb.ContainsKey($rc)) {
        $cardReimb[$rc] -= [double]$cr[5]
    }
}

# Compute excluded per card
$cardExcl = @{}
foreach ($ex in $excluded) {
    $card = $ex[4]
    if (-not $cardExcl.ContainsKey($card)) { $cardExcl[$card] = 0.0 }
    $cardExcl[$card] += [double]$ex[3]
}

# Union of all cards in display order
$cardOrder = @("-2674","-0733","-7552","-8289","-2409","Cash")
$activeCards = $cardOrder | Where-Object { $cardReimb.ContainsKey($_) -or $cardExcl.ContainsKey($_) }

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

$s2.Columns.Item(1).ColumnWidth = 22   # Payment type / category
$s2.Columns.Item(2).ColumnWidth = 28   # Description / type
$s2.Columns.Item(3).ColumnWidth = 14   # Amount / Reimbursed
$s2.Columns.Item(4).ColumnWidth = 12   # Count / Excluded
$s2.Columns.Item(5).ColumnWidth = 12   # Total
$s2.Columns.Item(6).ColumnWidth = 22   # Source description (credits section)
$s2.Columns.Item(7).ColumnWidth = 14   # Source card (credits section)

$r = $s2.Range("A1:G1"); $r.Merge()
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
    $r2 = $s2.Range($s2.Cells.Item($row,2), $s2.Cells.Item($row,7)); $r2.NumberFormat = "@"; $r2.Merge()
    $s2.Cells.Item($row,2).Value2 = $i[1]
    $row++
}
$row++

# ---- SUMMARY BY CATEGORY ----
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,7)); $r.Merge()
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
    @("Air Fare",    1476.90, 8),
    @("Car Rental",  1645.86, 2),
    @("Gas / Tolls",  121.21, 3),
    @("Hotel",       2814.10, 2),
    @("Postage",       16.71, 1),
    @("Misc",           6.00, 1),
    @("Other",          9.14, 2)
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
# Reimbursed column = net actual card charges + flight credits = TOTAL REIMBURSABLE above.
# Excluded column = items in this report not claimed (personal/non-reimbursable).
# Total column = Reimbursed + Excluded; shows full charges per payment type for this trip.
# Use Total column when deciding whether to roll excluded charges into a card payoff.
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,7)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "SUMMARY BY PAYMENT TYPE"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$ptHdrs = @("Payment Type","Description","Reimbursed","Excluded","Total")
for ($i = 0; $i -lt 5; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $ptHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++
$ptStart = $row

foreach ($card in $activeCards) {
    $reimb = if ($cardReimb.ContainsKey($card)) { [double]$cardReimb[$card] } else { 0.0 }
    $excl  = if ($cardExcl.ContainsKey($card))  { [double]$cardExcl[$card]  } else { 0.0 }
    $total = $reimb + $excl
    $name  = if ($cardNames.ContainsKey($card))  { $cardNames[$card] } else { "" }
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $c1 = $s2.Cells.Item($row,1); $c1.NumberFormat = "@"; $c1.Value2 = [string]$card; $c1.Interior.Color = $bg; $c1.HorizontalAlignment = -4108
    $c2 = $s2.Cells.Item($row,2); $c2.Value2 = [string]$name; $c2.Interior.Color = $bg
    $c3 = $s2.Cells.Item($row,3); $c3.NumberFormat = '$#,##0.00'; $c3.Value2 = [double]$reimb; $c3.HorizontalAlignment = -4152; $c3.Interior.Color = $bg
    $c4 = $s2.Cells.Item($row,4); $c4.NumberFormat = '$#,##0.00'; $c4.Value2 = [double]$excl;  $c4.HorizontalAlignment = -4152; $c4.Interior.Color = $bg
    $c5 = $s2.Cells.Item($row,5); $c5.NumberFormat = '$#,##0.00'; $c5.Value2 = [double]$total; $c5.HorizontalAlignment = -4152; $c5.Interior.Color = $bg
    $row++
}

# Flight Credits row (detail in section below)
$totalCredits = ($credits | ForEach-Object { [double]$_[5] } | Measure-Object -Sum).Sum
$bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
$cr1 = $s2.Cells.Item($row,1); $cr1.Value2 = "Flight Credits"; $cr1.Interior.Color = $bg; $cr1.Font.Italic = $true
$cr2 = $s2.Cells.Item($row,2); $cr2.Value2 = "$($credits.Count) credit(s) - see detail below"; $cr2.Interior.Color = $bg; $cr2.Font.Italic = $true
$cr3 = $s2.Cells.Item($row,3); $cr3.NumberFormat = '$#,##0.00'; $cr3.Value2 = [double]$totalCredits; $cr3.HorizontalAlignment = -4152; $cr3.Interior.Color = $bg; $cr3.Font.Italic = $true
$cr4 = $s2.Cells.Item($row,4); $cr4.NumberFormat = '$#,##0.00'; $cr4.Value2 = [double]0; $cr4.HorizontalAlignment = -4152; $cr4.Interior.Color = $bg
$cr5 = $s2.Cells.Item($row,5); $cr5.NumberFormat = '$#,##0.00'; $cr5.Value2 = [double]$totalCredits; $cr5.HorizontalAlignment = -4152; $cr5.Interior.Color = $bg; $cr5.Font.Italic = $true
$row++

# Totals row
$ptEndRow = $row - 1
$s2.Cells.Item($row,1).Value2 = "TOTAL"; $s2.Cells.Item($row,1).Font.Bold = $true
$s2.Cells.Item($row,1).Interior.Color = $darkBlue; $s2.Cells.Item($row,1).Font.Color = $white
$s2.Cells.Item($row,2).Interior.Color = $darkBlue
foreach ($col in @(3,4,5)) {
    $colLetter = [char](64 + $col)
    $tc = $s2.Cells.Item($row,$col)
    $tc.Formula = '=SUM(' + $colLetter + $ptStart + ':' + $colLetter + $ptEndRow + ')'
    $tc.NumberFormat = '$#,##0.00'; $tc.Font.Bold = $true
    $tc.Interior.Color = $darkBlue; $tc.Font.Color = $white; $tc.HorizontalAlignment = -4152
}
$rng = $s2.Range($s2.Cells.Item($ptStart-1,1), $s2.Cells.Item($row,5))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1
$row += 2

# ---- CREDITS APPLIED TO FLIGHTS ----
# Source Card = card that originally paid for the ticket that earned this credit (who to reimburse).
# Source      = description of how/where the credit was earned.
$r = $s2.Range($s2.Cells.Item($row,1), $s2.Cells.Item($row,7)); $r.Merge()
$c = $s2.Cells.Item($row,1)
$c.Value2 = "CREDITS APPLIED TO FLIGHTS"; $c.Font.Bold = $true; $c.Font.Size = 11
$c.Font.Color = $white; $c.Interior.Color = $midBlue; $c.HorizontalAlignment = -4108
$row++

$crHdrs = @("Date","Flight","Credit ID","Ref #","Amount","Source","Source Card")
for ($i = 0; $i -lt 7; $i++) {
    $c = $s2.Cells.Item($row,$i+1); $c.Value2 = $crHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $lightBlue
}
$row++
$credStart = $row

foreach ($cr in $credits) {
    $bg = if (($row % 2) -eq 0) { $lightGray } else { $white }
    $cd1 = $s2.Cells.Item($row,1); $cd1.NumberFormat = "m/d/yyyy"; $cd1.Value2 = $cr[0]; $cd1.Interior.Color = $bg
    $cd2 = $s2.Cells.Item($row,2); $cd2.Value2 = $cr[1]; $cd2.Interior.Color = $bg
    $cd3 = $s2.Cells.Item($row,3); $cd3.NumberFormat = "@"; $cd3.Value2 = [string]$cr[2]; $cd3.Interior.Color = $bg
    $cd4 = $s2.Cells.Item($row,4); $cd4.NumberFormat = "@"; $cd4.Value2 = [string]$cr[3]; $cd4.Interior.Color = $bg
    $cd5 = $s2.Cells.Item($row,5); $cd5.NumberFormat = '$#,##0.00'; $cd5.Value2 = [double]$cr[5]; $cd5.HorizontalAlignment = -4152; $cd5.Interior.Color = $bg
    $s2.Cells.Item($row,6).Value2 = $cr[6]; $s2.Cells.Item($row,6).Interior.Color = $bg
    $s2.Cells.Item($row,7).NumberFormat = "@"; $s2.Cells.Item($row,7).Value2 = $cr[4]; $s2.Cells.Item($row,7).HorizontalAlignment = -4108; $s2.Cells.Item($row,7).Interior.Color = $bg
    $row++
}
$s2.Cells.Item($row,2).Value2 = "Total Credits Applied"; $s2.Cells.Item($row,2).Font.Bold = $true
$s2.Cells.Item($row,2).Interior.Color = $lightBlue
$tc3 = $s2.Cells.Item($row,5)
$tc3.Formula = '=SUM(E' + $credStart + ':E' + ($row-1) + ')'
$tc3.NumberFormat = '$#,##0.00'; $tc3.Font.Bold = $true; $tc3.HorizontalAlignment = -4152
$tc3.Interior.Color = $lightBlue
foreach ($col in @(1,3,4,6,7)) { $s2.Cells.Item($row,$col).Interior.Color = $lightBlue }
$rng = $s2.Range($s2.Cells.Item($credStart-1,1), $s2.Cells.Item($row,7))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

# =====================================================================
# SHEET 3: EXCLUDED
# =====================================================================
$s3 = $wb.Sheets.Add([System.Type]::Missing, $s1)
$s3.Name = "Excluded"

$s3.Columns.Item(1).ColumnWidth = 10   # Date
$s3.Columns.Item(2).ColumnWidth = 40   # Description
$s3.Columns.Item(3).ColumnWidth = 14   # Category
$s3.Columns.Item(4).ColumnWidth = 12   # Amount
$s3.Columns.Item(5).ColumnWidth = 8    # Card
$s3.Columns.Item(6).ColumnWidth = 16   # Reason

$r = $s3.Range("A1:F1"); $r.Merge()
$c = $s3.Cells.Item(1,1)
$c.Value2 = "EXCLUDED ITEMS - Personal / Non-Reimbursable"
$c.Font.Bold = $true; $c.Font.Size = 13; $c.Font.Color = $white
$c.Interior.Color = $darkRed; $c.HorizontalAlignment = -4108
$s3.Rows.Item(1).RowHeight = 22

$r = $s3.Range("A2:F2"); $r.Merge()
$s3.Cells.Item(2,1).Value2 = "Personal items not claimed. All F&B (meals, groceries, alcohol) documented in separate meals reimbursement report."
$s3.Cells.Item(2,1).Font.Italic = $true

$exHdrs = @("Date","Description","Category","Amount","Card","Reason")
for ($i = 0; $i -lt 6; $i++) {
    $c = $s3.Cells.Item(3,$i+1); $c.Value2 = $exHdrs[$i]
    $c.Font.Bold = $true; $c.Interior.Color = $darkRed; $c.Font.Color = $white
}

$row = 4
foreach ($ex in $excluded) {
    $bg = if (($row % 2) -eq 0) { $lightRed } else { $white }
    $s3.Cells.Item($row,1).Value2 = $ex[0]; $s3.Cells.Item($row,1).NumberFormat = "m/d/yyyy"; $s3.Cells.Item($row,1).Interior.Color = $bg
    $s3.Cells.Item($row,2).Value2 = $ex[1]; $s3.Cells.Item($row,2).Interior.Color = $bg
    $s3.Cells.Item($row,3).Value2 = $ex[2]; $s3.Cells.Item($row,3).Interior.Color = $bg; $s3.Cells.Item($row,3).HorizontalAlignment = -4108
    $s3.Cells.Item($row,4).Value2 = [double]$ex[3]; $s3.Cells.Item($row,4).NumberFormat = '$#,##0.00'; $s3.Cells.Item($row,4).HorizontalAlignment = -4152; $s3.Cells.Item($row,4).Interior.Color = $bg
    $s3.Cells.Item($row,5).NumberFormat = "@"; $s3.Cells.Item($row,5).Value2 = $ex[4]; $s3.Cells.Item($row,5).HorizontalAlignment = -4108; $s3.Cells.Item($row,5).Interior.Color = $bg
    $s3.Cells.Item($row,6).Value2 = $ex[5]; $s3.Cells.Item($row,6).HorizontalAlignment = -4108; $s3.Cells.Item($row,6).Interior.Color = $bg
    $row++
}
$s3.Cells.Item($row,2).Value2 = "TOTAL EXCLUDED"; $s3.Cells.Item($row,2).Font.Bold = $true
$s3.Cells.Item($row,2).Interior.Color = $darkRed; $s3.Cells.Item($row,2).Font.Color = $white
$tc4 = $s3.Cells.Item($row,4)
$tc4.Formula = '=SUM(D4:D' + ($row-1) + ')'
$tc4.NumberFormat = '$#,##0.00'; $tc4.Font.Bold = $true
$tc4.Interior.Color = $darkRed; $tc4.Font.Color = $white; $tc4.HorizontalAlignment = -4152
foreach ($col in @(1,3,5,6)) { $s3.Cells.Item($row,$col).Interior.Color = $darkRed }
$rng = $s3.Range($s3.Cells.Item(3,1), $s3.Cells.Item($row,6))
$rng.Borders.Item(7).LineStyle = 1; $rng.Borders.Item(8).LineStyle = 1
$rng.Borders.Item(9).LineStyle = 1; $rng.Borders.Item(10).LineStyle = 1
$rng.Borders.Item(11).LineStyle = 1; $rng.Borders.Item(12).LineStyle = 1

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
