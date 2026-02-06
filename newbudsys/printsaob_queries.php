<?php

include "../connect.php";
include "../dbconn.php";


$data = [];

$ors_number_conditions = [];
for ($i = 1; $i <= $mon; $i++) {
    $ors_number_conditions[] = "o.ors_number LIKE '" . str_pad($i, 2, "0", STR_PAD_LEFT) . "-%'";
}
$ors_number_sql = implode(" OR ", $ors_number_conditions);



// =============================== SALARY =============================== //
// SALARY 1A1
$pg_query_sal1a1 = "
    SELECT 
        allotment AS sal1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal1a1_total

    FROM allotment a 
    WHERE a.uacs = '50101010-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_sal1a1 = pg_query($pg_connection, $pg_query_sal1a1);
if (!$pg_result_sal1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_sal1a1)) {

    $salary_allot1a1_num = $pg_row['sal1a1_allot'];
    $salary_allot1a1 = number_format($pg_row['sal1a1_allot'], 2);
    if ($salary_allot1a1 == "0.00") {
        $salary_allot1a1 = "-";
    }

    $salary1A1_num = $pg_row['sal1a1'];
    $salary1A1 = number_format($pg_row['sal1a1'], 2);
    if ($salary1A1 == "0.00") {
        $salary1A1 = "-";
    }

    $salary1A1_total_num = $pg_row['sal1a1_total'];
    $salary1A1_total = number_format($pg_row['sal1a1_total'], 2);
    if ($salary1A1_total == "0.00") {
        $salary1A1_total = "-";
    }

    $salary1A1_balance_num = ($pg_row['sal1a1_allot'] - $pg_row['sal1a1_total']);
    $salary1A1_balance = number_format(($pg_row['sal1a1_allot'] - $pg_row['sal1a1_total']), 2);
    if ($salary1A1_balance == "0.00") {
        $salary1A1_balance = "-";
    }
}


// SALARY 2a11
$pg_query_sal2a11 = "
    SELECT 
        allotment AS sal2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal2a11_total

    FROM allotment a 
    WHERE a.uacs = '50101010-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_sal2a11 = pg_query($pg_connection, $pg_query_sal2a11);
if (!$pg_result_sal2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_sal2a11)) {

    $salary_allot2a11_num = $pg_row['sal2a11_allot'];
    $salary_allot2a11 = number_format($pg_row['sal2a11_allot'], 2);
    if ($salary_allot2a11 == "0.00") {
        $salary_allot2a11 = "-";
    }

    $salary2a11_num = $pg_row['sal2a11'];
    $salary2a11 = number_format($pg_row['sal2a11'], 2);
    if ($salary2a11 == "0.00") {
        $salary2a11 = "-";
    }

    $salary2a11_total_num = $pg_row['sal2a11_total'];
    $salary2a11_total = number_format($pg_row['sal2a11_total'], 2);
    if ($salary2a11_total == "0.00") {
        $salary2a11_total = "-";
    }

    $salary2a11_balance_num = ($pg_row['sal2a11_allot'] - $pg_row['sal2a11_total']);
    $salary2a11_balance = number_format(($pg_row['sal2a11_allot'] - $pg_row['sal2a11_total']), 2);
    if ($salary2a11_balance == "0.00") {
        $salary2a11_balance = "-";
    }
}


// SALARY 2a12
$pg_query_sal2a12 = "
    SELECT 
        allotment AS sal2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS sal2a12_total

    FROM allotment a 
    WHERE a.uacs = '50101010-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_sal2a12 = pg_query($pg_connection, $pg_query_sal2a12);
if (!$pg_result_sal2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_sal2a12)) {

    $salary_allot2a12_num = $pg_row['sal2a12_allot'];
    $salary_allot2a12 = number_format($pg_row['sal2a12_allot'], 2);
    if ($salary_allot2a12 == "0.00") {
        $salary_allot2a12 = "-";
    }

    $salary2a12_num = $pg_row['sal2a12'];
    $salary2a12 = number_format($pg_row['sal2a12'], 2);
    if ($salary2a12 == "0.00") {
        $salary2a12 = "-";
    }

    $salary2a12_total_num = $pg_row['sal2a12_total'];
    $salary2a12_total = number_format($pg_row['sal2a12_total'], 2);
    if ($salary2a12_total == "0.00") {
        $salary2a12_total = "-";
    }

    $salary2a12_balance_num = ($pg_row['sal2a12_allot'] - $pg_row['sal2a12_total']);
    $salary2a12_balance = number_format(($pg_row['sal2a12_allot'] - $pg_row['sal2a12_total']), 2);
    if ($salary2a12_balance == "0.00") {
        $salary2a12_balance = "-";
    }
}
// =============================== SALARY =============================== //





// =============================== PERA =============================== //
// PERA 1A1
$pg_query_pera1a1 = "
    SELECT 
        allotment AS pera1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102010-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pera1a1 = pg_query($pg_connection, $pg_query_pera1a1);
if (!$pg_result_pera1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pera1a1)) {

    $pera_allot1a1_num = $pg_row['pera1a1_allot'];
    $pera_allot1a1 = number_format($pg_row['pera1a1_allot'], 2);
    if ($pera_allot1a1 == "0.00") {
        $pera_allot1a1 = "-";
    }

    $pera1A1_num = $pg_row['pera1a1'];
    $pera1A1 = number_format($pg_row['pera1a1'], 2);
    if ($pera1A1 == "0.00") {
        $pera1A1 = "-";
    }

    $pera1A1_total_num = $pg_row['pera1a1_total'];
    $pera1A1_total = number_format($pg_row['pera1a1_total'], 2);
    if ($pera1A1_total == "0.00") {
        $pera1A1_total = "-";
    }

    $pera1A1_balance_num = ($pg_row['pera1a1_allot'] - $pg_row['pera1a1_total']);
    $pera1A1_balance = number_format(($pg_row['pera1a1_allot'] - $pg_row['pera1a1_total']), 2);
    if ($pera1A1_balance == "0.00") {
        $pera1A1_balance = "-";
    }
}


// PERA 2a11
$pg_query_pera2a11 = "
    SELECT 
        allotment AS pera2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102010-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pera2a11 = pg_query($pg_connection, $pg_query_pera2a11);
if (!$pg_result_pera2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pera2a11)) {

    $pera_allot2a11_num = $pg_row['pera2a11_allot'];
    $pera_allot2a11 = number_format($pg_row['pera2a11_allot'], 2);
    if ($pera_allot2a11 == "0.00") {
        $pera_allot2a11 = "-";
    }

    $pera2a11_num = $pg_row['pera2a11'];
    $pera2a11 = number_format($pg_row['pera2a11'], 2);
    if ($pera2a11 == "0.00") {
        $pera2a11 = "-";
    }

    $pera2a11_total_num = $pg_row['pera2a11_total'];
    $pera2a11_total = number_format($pg_row['pera2a11_total'], 2);
    if ($pera2a11_total == "0.00") {
        $pera2a11_total = "-";
    }

    $pera2a11_balance_num = ($pg_row['pera2a11_allot'] - $pg_row['pera2a11_total']);
    $pera2a11_balance = number_format(($pg_row['pera2a11_allot'] - $pg_row['pera2a11_total']), 2);
    if ($pera2a11_balance == "0.00") {
        $pera2a11_balance = "-";
    }
}


// PERA 2a12
$pg_query_pera2a12 = "
    SELECT 
        allotment AS pera2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pera2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102010-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pera2a12 = pg_query($pg_connection, $pg_query_pera2a12);
if (!$pg_result_pera2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pera2a12)) {

    $pera_allot2a12_num = $pg_row['pera2a12_allot'];
    $pera_allot2a12 = number_format($pg_row['pera2a12_allot'], 2);
    if ($pera_allot2a12 == "0.00") {
        $pera_allot2a12 = "-";
    }

    $pera2a12_num = $pg_row['pera2a12'];
    $pera2a12 = number_format($pg_row['pera2a12'], 2);
    if ($pera2a12 == "0.00") {
        $pera2a12 = "-";
    }

    $pera2a12_total_num = $pg_row['pera2a12_total'];
    $pera2a12_total = number_format($pg_row['pera2a12_total'], 2);
    if ($pera2a12_total == "0.00") {
        $pera2a12_total = "-";
    }

    $pera2a12_balance_num = ($pg_row['pera2a12_allot'] - $pg_row['pera2a12_total']);
    $pera2a12_balance = number_format(($pg_row['pera2a12_allot'] - $pg_row['pera2a12_total']), 2);
    if ($pera2a12_balance == "0.00") {
        $pera2a12_balance = "-";
    }
}
// =============================== PERA =============================== //




// =============================== RA =============================== //
// RA 1A1
$pg_query_rarara1a1 = "
    SELECT 
        allotment AS rarara1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS rarara1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS rarara1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102020-00' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_rarara1a1 = pg_query($pg_connection, $pg_query_rarara1a1);
if (!$pg_result_rarara1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_rarara1a1)) {

    $rarara_allot1a1_num = $pg_row['rarara1a1_allot'];
    $rarara_allot1a1 = number_format($pg_row['rarara1a1_allot'], 2);
    if ($rarara_allot1a1 == "0.00") {
        $rarara_allot1a1 = "-";
    }

    $rarara1A1_num = $pg_row['rarara1a1'];
    $rarara1A1 = number_format($pg_row['rarara1a1'], 2);
    if ($rarara1A1 == "0.00") {
        $rarara1A1 = "-";
    }

    $rarara1A1_total_num = $pg_row['rarara1a1_total'];
    $rarara1A1_total = number_format($pg_row['rarara1a1_total'], 2);
    if ($rarara1A1_total == "0.00") {
        $rarara1A1_total = "-";
    }

    $rarara1A1_balance_num = ($pg_row['rarara1a1_allot'] - $pg_row['rarara1a1_total']);
    $rarara1A1_balance = number_format(($pg_row['rarara1a1_allot'] - $pg_row['rarara1a1_total']), 2);
    if ($rarara1A1_balance == "0.00") {
        $rarara1A1_balance = "-";
    }
}


// RA 2a12
$pg_query_rarara2a12 = "
    SELECT 
        allotment AS rarara2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS rarara2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS rarara2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102020-00' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_rarara2a12 = pg_query($pg_connection, $pg_query_rarara2a12);
if (!$pg_result_rarara2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_rarara2a12)) {

    $rarara_allot2a12_num = $pg_row['rarara2a12_allot'];
    $rarara_allot2a12 = number_format($pg_row['rarara2a12_allot'], 2);
    if ($rarara_allot2a12 == "0.00") {
        $rarara_allot2a12 = "-";
    }

    $rarara2a12_num = $pg_row['rarara2a12'];
    $rarara2a12 = number_format($pg_row['rarara2a12'], 2);
    if ($rarara2a12 == "0.00") {
        $rarara2a12 = "-";
    }

    $rarara2a12_total_num = $pg_row['rarara2a12_total'];
    $rarara2a12_total = number_format($pg_row['rarara2a12_total'], 2);
    if ($rarara2a12_total == "0.00") {
        $rarara2a12_total = "-";
    }

    $rarara2a12_balance_num = ($pg_row['rarara2a12_allot'] - $pg_row['rarara2a12_total']);
    $rarara2a12_balance = number_format(($pg_row['rarara2a12_allot'] - $pg_row['rarara2a12_total']), 2);
    if ($rarara2a12_balance == "0.00") {
        $rarara2a12_balance = "-";
    }
}
// =============================== RA =============================== //




// =============================== TA =============================== //
// TA 1A1
$pg_query_tatata1a1 = "
    SELECT 
        allotment AS tatata1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS tatata1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS tatata1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102030-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_tatata1a1 = pg_query($pg_connection, $pg_query_tatata1a1);
if (!$pg_result_tatata1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_tatata1a1)) {

    $tatata_allot1a1_num = $pg_row['tatata1a1_allot'];
    $tatata_allot1a1 = number_format($pg_row['tatata1a1_allot'], 2);
    if ($tatata_allot1a1 == "0.00") {
        $tatata_allot1a1 = "-";
    }

    $tatata1A1_num = $pg_row['tatata1a1'];
    $tatata1A1 = number_format($pg_row['tatata1a1'], 2);
    if ($tatata1A1 == "0.00") {
        $tatata1A1 = "-";
    }

    $tatata1A1_total_num = $pg_row['tatata1a1_total'];
    $tatata1A1_total = number_format($pg_row['tatata1a1_total'], 2);
    if ($tatata1A1_total == "0.00") {
        $tatata1A1_total = "-";
    }

    $tatata1A1_balance_num = ($pg_row['tatata1a1_allot'] - $pg_row['tatata1a1_total']);
    $tatata1A1_balance = number_format(($pg_row['tatata1a1_allot'] - $pg_row['tatata1a1_total']), 2);
    if ($tatata1A1_balance == "0.00") {
        $tatata1A1_balance = "-";
    }
}


// TA 2a12
$pg_query_tatata2a12 = "
    SELECT 
        allotment AS tatata2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS tatata2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS tatata2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102030-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_tatata2a12 = pg_query($pg_connection, $pg_query_tatata2a12);
if (!$pg_result_tatata2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_tatata2a12)) {

    $tatata_allot2a12_num = $pg_row['tatata2a12_allot'];
    $tatata_allot2a12 = number_format($pg_row['tatata2a12_allot'], 2);
    if ($tatata_allot2a12 == "0.00") {
        $tatata_allot2a12 = "-";
    }

    $tatata2a12_num = $pg_row['tatata2a12'];
    $tatata2a12 = number_format($pg_row['tatata2a12'], 2);
    if ($tatata2a12 == "0.00") {
        $tatata2a12 = "-";
    }

    $tatata2a12_total_num = $pg_row['tatata2a12_total'];
    $tatata2a12_total = number_format($pg_row['tatata2a12_total'], 2);
    if ($tatata2a12_total == "0.00") {
        $tatata2a12_total = "-";
    }

    $tatata2a12_balance_num = ($pg_row['tatata2a12_allot'] - $pg_row['tatata2a12_total']);
    $tatata2a12_balance = number_format(($pg_row['tatata2a12_allot'] - $pg_row['tatata2a12_total']), 2);
    if ($tatata2a12_balance == "0.00") {
        $tatata2a12_balance = "-";
    }
}
// =============================== TA =============================== //




// =============================== Clothing =============================== //
// Clothing 1A1
$pg_query_clothing1a1 = "
    SELECT 
        allotment AS clothing1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102040-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_clothing1a1 = pg_query($pg_connection, $pg_query_clothing1a1);
if (!$pg_result_clothing1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_clothing1a1)) {

    $clothing_allot1a1_num = $pg_row['clothing1a1_allot'];
    $clothing_allot1a1 = number_format($pg_row['clothing1a1_allot'], 2);
    if ($clothing_allot1a1 == "0.00") {
        $clothing_allot1a1 = "-";
    }

    $clothing1A1_num = $pg_row['clothing1a1'];
    $clothing1A1 = number_format($pg_row['clothing1a1'], 2);
    if ($clothing1A1 == "0.00") {
        $clothing1A1 = "-";
    }

    $clothing1A1_total_num = $pg_row['clothing1a1_total'];
    $clothing1A1_total = number_format($pg_row['clothing1a1_total'], 2);
    if ($clothing1A1_total == "0.00") {
        $clothing1A1_total = "-";
    }

    $clothing1A1_balance_num = ($pg_row['clothing1a1_allot'] - $pg_row['clothing1a1_total']);
    $clothing1A1_balance = number_format(($pg_row['clothing1a1_allot'] - $pg_row['clothing1a1_total']), 2);
    if ($clothing1A1_balance == "0.00") {
        $clothing1A1_balance = "-";
    }
}


// Clothing 2a11
$pg_query_clothing2a11 = "
    SELECT 
        allotment AS clothing2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102040-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_clothing2a11 = pg_query($pg_connection, $pg_query_clothing2a11);
if (!$pg_result_clothing2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_clothing2a11)) {

    $clothing_allot2a11_num = $pg_row['clothing2a11_allot'];
    $clothing_allot2a11 = number_format($pg_row['clothing2a11_allot'], 2);
    if ($clothing_allot2a11 == "0.00") {
        $clothing_allot2a11 = "-";
    }

    $clothing2a11_num = $pg_row['clothing2a11'];
    $clothing2a11 = number_format($pg_row['clothing2a11'], 2);
    if ($clothing2a11 == "0.00") {
        $clothing2a11 = "-";
    }

    $clothing2a11_total_num = $pg_row['clothing2a11_total'];
    $clothing2a11_total = number_format($pg_row['clothing2a11_total'], 2);
    if ($clothing2a11_total == "0.00") {
        $clothing2a11_total = "-";
    }

    $clothing2a11_balance_num = ($pg_row['clothing2a11_allot'] - $pg_row['clothing2a11_total']);
    $clothing2a11_balance = number_format(($pg_row['clothing2a11_allot'] - $pg_row['clothing2a11_total']), 2);
    if ($clothing2a11_balance == "0.00") {
        $clothing2a11_balance = "-";
    }
}


// Clothing 2a12
$pg_query_clothing2a12 = "
    SELECT 
        allotment AS clothing2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS clothing2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102040-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_clothing2a12 = pg_query($pg_connection, $pg_query_clothing2a12);
if (!$pg_result_clothing2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_clothing2a12)) {

    $clothing_allot2a12_num = $pg_row['clothing2a12_allot'];
    $clothing_allot2a12 = number_format($pg_row['clothing2a12_allot'], 2);
    if ($clothing_allot2a12 == "0.00") {
        $clothing_allot2a12 = "-";
    }

    $clothing2a12_num = $pg_row['clothing2a12'];
    $clothing2a12 = number_format($pg_row['clothing2a12'], 2);
    if ($clothing2a12 == "0.00") {
        $clothing2a12 = "-";
    }

    $clothing2a12_total_num = $pg_row['clothing2a12_total'];
    $clothing2a12_total = number_format($pg_row['clothing2a12_total'], 2);
    if ($clothing2a12_total == "0.00") {
        $clothing2a12_total = "-";
    }

    $clothing2a12_balance_num = ($pg_row['clothing2a12_allot'] - $pg_row['clothing2a12_total']);
    $clothing2a12_balance = number_format(($pg_row['clothing2a12_allot'] - $pg_row['clothing2a12_total']), 2);
    if ($clothing2a12_balance == "0.00") {
        $clothing2a12_balance = "-";
    }
}
// =============================== Clothing =============================== //




// =============================== productivity =============================== //
// productivity 1A1
$pg_query_productivity1a1 = "
    SELECT 
        allotment AS productivity1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102990-12' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_productivity1a1 = pg_query($pg_connection, $pg_query_productivity1a1);
if (!$pg_result_productivity1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_productivity1a1)) {

    $productivity_allot1a1_num = $pg_row['productivity1a1_allot'];
    $productivity_allot1a1 = number_format($pg_row['productivity1a1_allot'], 2);
    if ($productivity_allot1a1 == "0.00") {
        $productivity_allot1a1 = "-";
    }

    $productivity1A1_num = $pg_row['productivity1a1'];
    $productivity1A1 = number_format($pg_row['productivity1a1'], 2);
    if ($productivity1A1 == "0.00") {
        $productivity1A1 = "-";
    }

    $productivity1A1_total_num = $pg_row['productivity1a1_total'];
    $productivity1A1_total = number_format($pg_row['productivity1a1_total'], 2);
    if ($productivity1A1_total == "0.00") {
        $productivity1A1_total = "-";
    }

    $productivity1A1_balance_num = ($pg_row['productivity1a1_allot'] - $pg_row['productivity1a1_total']);
    $productivity1A1_balance = number_format(($pg_row['productivity1a1_allot'] - $pg_row['productivity1a1_total']), 2);
    if ($productivity1A1_balance == "0.00") {
        $productivity1A1_balance = "-";
    }
}


// productivity 2a11
$pg_query_productivity2a11 = "
    SELECT 
        allotment AS productivity2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102990-12' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_productivity2a11 = pg_query($pg_connection, $pg_query_productivity2a11);
if (!$pg_result_productivity2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_productivity2a11)) {

    $productivity_allot2a11_num = $pg_row['productivity2a11_allot'];
    $productivity_allot2a11 = number_format($pg_row['productivity2a11_allot'], 2);
    if ($productivity_allot2a11 == "0.00") {
        $productivity_allot2a11 = "-";
    }

    $productivity2a11_num = $pg_row['productivity2a11'];
    $productivity2a11 = number_format($pg_row['productivity2a11'], 2);
    if ($productivity2a11 == "0.00") {
        $productivity2a11 = "-";
    }

    $productivity2a11_total_num = $pg_row['productivity2a11_total'];
    $productivity2a11_total = number_format($pg_row['productivity2a11_total'], 2);
    if ($productivity2a11_total == "0.00") {
        $productivity2a11_total = "-";
    }

    $productivity2a11_balance_num = ($pg_row['productivity2a11_allot'] - $pg_row['productivity2a11_total']);
    $productivity2a11_balance = number_format(($pg_row['productivity2a11_allot'] - $pg_row['productivity2a11_total']), 2);
    if ($productivity2a11_balance == "0.00") {
        $productivity2a11_balance = "-";
    }
}


// productivity 2a12
$pg_query_productivity2a12 = "
    SELECT 
        allotment AS productivity2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS productivity2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102990-12' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_productivity2a12 = pg_query($pg_connection, $pg_query_productivity2a12);
if (!$pg_result_productivity2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_productivity2a12)) {

    $productivity_allot2a12_num = $pg_row['productivity2a12_allot'];
    $productivity_allot2a12 = number_format($pg_row['productivity2a12_allot'], 2);
    if ($productivity_allot2a12 == "0.00") {
        $productivity_allot2a12 = "-";
    }

    $productivity2a12_num = $pg_row['productivity2a12'];
    $productivity2a12 = number_format($pg_row['productivity2a12'], 2);
    if ($productivity2a12 == "0.00") {
        $productivity2a12 = "-";
    }

    $productivity2a12_total_num = $pg_row['productivity2a12_total'];
    $productivity2a12_total = number_format($pg_row['productivity2a12_total'], 2);
    if ($productivity2a12_total == "0.00") {
        $productivity2a12_total = "-";
    }

    $productivity2a12_balance_num = ($pg_row['productivity2a12_allot'] - $pg_row['productivity2a12_total']);
    $productivity2a12_balance = number_format(($pg_row['productivity2a12_allot'] - $pg_row['productivity2a12_total']), 2);
    if ($productivity2a12_balance == "0.00") {
        $productivity2a12_balance = "-";
    }
}
// =============================== productivity =============================== //




// =============================== yearend =============================== //
// yearend 1A1
$pg_query_yearend1a1 = "
    SELECT 
        allotment AS yearend1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102140-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_yearend1a1 = pg_query($pg_connection, $pg_query_yearend1a1);
if (!$pg_result_yearend1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_yearend1a1)) {

    $yearend_allot1a1_num = $pg_row['yearend1a1_allot'];
    $yearend_allot1a1 = number_format($pg_row['yearend1a1_allot'], 2);
    if ($yearend_allot1a1 == "0.00") {
        $yearend_allot1a1 = "-";
    }

    $yearend1A1_num = $pg_row['yearend1a1'];
    $yearend1A1 = number_format($pg_row['yearend1a1'], 2);
    if ($yearend1A1 == "0.00") {
        $yearend1A1 = "-";
    }

    $yearend1A1_total_num = $pg_row['yearend1a1_total'];
    $yearend1A1_total = number_format($pg_row['yearend1a1_total'], 2);
    if ($yearend1A1_total == "0.00") {
        $yearend1A1_total = "-";
    }

    $yearend1A1_balance_num = ($pg_row['yearend1a1_allot'] - $pg_row['yearend1a1_total']);
    $yearend1A1_balance = number_format(($pg_row['yearend1a1_allot'] - $pg_row['yearend1a1_total']), 2);
    if ($yearend1A1_balance == "0.00") {
        $yearend1A1_balance = "-";
    }
}


// yearend 2a11
$pg_query_yearend2a11 = "
    SELECT 
        allotment AS yearend2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102140-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_yearend2a11 = pg_query($pg_connection, $pg_query_yearend2a11);
if (!$pg_result_yearend2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_yearend2a11)) {

    $yearend_allot2a11_num = $pg_row['yearend2a11_allot'];
    $yearend_allot2a11 = number_format($pg_row['yearend2a11_allot'], 2);
    if ($yearend_allot2a11 == "0.00") {
        $yearend_allot2a11 = "-";
    }

    $yearend2a11_num = $pg_row['yearend2a11'];
    $yearend2a11 = number_format($pg_row['yearend2a11'], 2);
    if ($yearend2a11 == "0.00") {
        $yearend2a11 = "-";
    }

    $yearend2a11_total_num = $pg_row['yearend2a11_total'];
    $yearend2a11_total = number_format($pg_row['yearend2a11_total'], 2);
    if ($yearend2a11_total == "0.00") {
        $yearend2a11_total = "-";
    }

    $yearend2a11_balance_num = ($pg_row['yearend2a11_allot'] - $pg_row['yearend2a11_total']);
    $yearend2a11_balance = number_format(($pg_row['yearend2a11_allot'] - $pg_row['yearend2a11_total']), 2);
    if ($yearend2a11_balance == "0.00") {
        $yearend2a11_balance = "-";
    }
}


// yearend 2a12
$pg_query_yearend2a12 = "
    SELECT 
        allotment AS yearend2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS yearend2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102140-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_yearend2a12 = pg_query($pg_connection, $pg_query_yearend2a12);
if (!$pg_result_yearend2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_yearend2a12)) {

    $yearend_allot2a12_num = $pg_row['yearend2a12_allot'];
    $yearend_allot2a12 = number_format($pg_row['yearend2a12_allot'], 2);
    if ($yearend_allot2a12 == "0.00") {
        $yearend_allot2a12 = "-";
    }

    $yearend2a12_num = $pg_row['yearend2a12'];
    $yearend2a12 = number_format($pg_row['yearend2a12'], 2);
    if ($yearend2a12 == "0.00") {
        $yearend2a12 = "-";
    }

    $yearend2a12_total_num = $pg_row['yearend2a12_total'];
    $yearend2a12_total = number_format($pg_row['yearend2a12_total'], 2);
    if ($yearend2a12_total == "0.00") {
        $yearend2a12_total = "-";
    }

    $yearend2a12_balance_num = ($pg_row['yearend2a12_allot'] - $pg_row['yearend2a12_total']);
    $yearend2a12_balance = number_format(($pg_row['yearend2a12_allot'] - $pg_row['yearend2a12_total']), 2);
    if ($yearend2a12_balance == "0.00") {
        $yearend2a12_balance = "-";
    }
}
// =============================== yearend =============================== //




// =============================== cashgift =============================== //
// cashgift 1A1
$pg_query_cashgift1a1 = "
    SELECT 
        allotment AS cashgift1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102150-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_cashgift1a1 = pg_query($pg_connection, $pg_query_cashgift1a1);
if (!$pg_result_cashgift1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_cashgift1a1)) {

    $cashgift_allot1a1_num = $pg_row['cashgift1a1_allot'];
    $cashgift_allot1a1 = number_format($pg_row['cashgift1a1_allot'], 2);
    if ($cashgift_allot1a1 == "0.00") {
        $cashgift_allot1a1 = "-";
    }

    $cashgift1A1_num = $pg_row['cashgift1a1'];
    $cashgift1A1 = number_format($pg_row['cashgift1a1'], 2);
    if ($cashgift1A1 == "0.00") {
        $cashgift1A1 = "-";
    }

    $cashgift1A1_total_num = $pg_row['cashgift1a1_total'];
    $cashgift1A1_total = number_format($pg_row['cashgift1a1_total'], 2);
    if ($cashgift1A1_total == "0.00") {
        $cashgift1A1_total = "-";
    }

    $cashgift1A1_balance_num = ($pg_row['cashgift1a1_allot'] - $pg_row['cashgift1a1_total']);
    $cashgift1A1_balance = number_format(($pg_row['cashgift1a1_allot'] - $pg_row['cashgift1a1_total']), 2);
    if ($cashgift1A1_balance == "0.00") {
        $cashgift1A1_balance = "-";
    }
}


// cashgift 2a11
$pg_query_cashgift2a11 = "
    SELECT 
        allotment AS cashgift2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102150-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_cashgift2a11 = pg_query($pg_connection, $pg_query_cashgift2a11);
if (!$pg_result_cashgift2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_cashgift2a11)) {

    $cashgift_allot2a11_num = $pg_row['cashgift2a11_allot'];
    $cashgift_allot2a11 = number_format($pg_row['cashgift2a11_allot'], 2);
    if ($cashgift_allot2a11 == "0.00") {
        $cashgift_allot2a11 = "-";
    }

    $cashgift2a11_num = $pg_row['cashgift2a11'];
    $cashgift2a11 = number_format($pg_row['cashgift2a11'], 2);
    if ($cashgift2a11 == "0.00") {
        $cashgift2a11 = "-";
    }

    $cashgift2a11_total_num = $pg_row['cashgift2a11_total'];
    $cashgift2a11_total = number_format($pg_row['cashgift2a11_total'], 2);
    if ($cashgift2a11_total == "0.00") {
        $cashgift2a11_total = "-";
    }

    $cashgift2a11_balance_num = ($pg_row['cashgift2a11_allot'] - $pg_row['cashgift2a11_total']);
    $cashgift2a11_balance = number_format(($pg_row['cashgift2a11_allot'] - $pg_row['cashgift2a11_total']), 2);
    if ($cashgift2a11_balance == "0.00") {
        $cashgift2a11_balance = "-";
    }
}


// cashgift 2a12
$pg_query_cashgift2a12 = "
    SELECT 
        allotment AS cashgift2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cashgift2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102150-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_cashgift2a12 = pg_query($pg_connection, $pg_query_cashgift2a12);
if (!$pg_result_cashgift2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_cashgift2a12)) {

    $cashgift_allot2a12_num = $pg_row['cashgift2a12_allot'];
    $cashgift_allot2a12 = number_format($pg_row['cashgift2a12_allot'], 2);
    if ($cashgift_allot2a12 == "0.00") {
        $cashgift_allot2a12 = "-";
    }

    $cashgift2a12_num = $pg_row['cashgift2a12'];
    $cashgift2a12 = number_format($pg_row['cashgift2a12'], 2);
    if ($cashgift2a12 == "0.00") {
        $cashgift2a12 = "-";
    }

    $cashgift2a12_total_num = $pg_row['cashgift2a12_total'];
    $cashgift2a12_total = number_format($pg_row['cashgift2a12_total'], 2);
    if ($cashgift2a12_total == "0.00") {
        $cashgift2a12_total = "-";
    }

    $cashgift2a12_balance_num = ($pg_row['cashgift2a12_allot'] - $pg_row['cashgift2a12_total']);
    $cashgift2a12_balance = number_format(($pg_row['cashgift2a12_allot'] - $pg_row['cashgift2a12_total']), 2);
    if ($cashgift2a12_balance == "0.00") {
        $cashgift2a12_balance = "-";
    }
}
// =============================== cashgift =============================== //




// =============================== midyear =============================== //
// midyear 1A1
$pg_query_midyear1a1 = "
    SELECT 
        allotment AS midyear1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102160-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_midyear1a1 = pg_query($pg_connection, $pg_query_midyear1a1);
if (!$pg_result_midyear1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_midyear1a1)) {

    $midyear_allot1a1_num = $pg_row['midyear1a1_allot'];
    $midyear_allot1a1 = number_format($pg_row['midyear1a1_allot'], 2);
    if ($midyear_allot1a1 == "0.00") {
        $midyear_allot1a1 = "-";
    }

    $midyear1A1_num = $pg_row['midyear1a1'];
    $midyear1A1 = number_format($pg_row['midyear1a1'], 2);
    if ($midyear1A1 == "0.00") {
        $midyear1A1 = "-";
    }

    $midyear1A1_total_num = $pg_row['midyear1a1_total'];
    $midyear1A1_total = number_format($pg_row['midyear1a1_total'], 2);
    if ($midyear1A1_total == "0.00") {
        $midyear1A1_total = "-";
    }

    $midyear1A1_balance_num = ($pg_row['midyear1a1_allot'] - $pg_row['midyear1a1_total']);
    $midyear1A1_balance = number_format(($pg_row['midyear1a1_allot'] - $pg_row['midyear1a1_total']), 2);
    if ($midyear1A1_balance == "0.00") {
        $midyear1A1_balance = "-";
    }
}


// midyear 2a11
$pg_query_midyear2a11 = "
    SELECT 
        allotment AS midyear2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102160-01' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_midyear2a11 = pg_query($pg_connection, $pg_query_midyear2a11);
if (!$pg_result_midyear2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_midyear2a11)) {

    $midyear_allot2a11_num = $pg_row['midyear2a11_allot'];
    $midyear_allot2a11 = number_format($pg_row['midyear2a11_allot'], 2);
    if ($midyear_allot2a11 == "0.00") {
        $midyear_allot2a11 = "-";
    }

    $midyear2a11_num = $pg_row['midyear2a11'];
    $midyear2a11 = number_format($pg_row['midyear2a11'], 2);
    if ($midyear2a11 == "0.00") {
        $midyear2a11 = "-";
    }

    $midyear2a11_total_num = $pg_row['midyear2a11_total'];
    $midyear2a11_total = number_format($pg_row['midyear2a11_total'], 2);
    if ($midyear2a11_total == "0.00") {
        $midyear2a11_total = "-";
    }

    $midyear2a11_balance_num = ($pg_row['midyear2a11_allot'] - $pg_row['midyear2a11_total']);
    $midyear2a11_balance = number_format(($pg_row['midyear2a11_allot'] - $pg_row['midyear2a11_total']), 2);
    if ($midyear2a11_balance == "0.00") {
        $midyear2a11_balance = "-";
    }
}


// midyear 2a12
$pg_query_midyear2a12 = "
    SELECT 
        allotment AS midyear2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS midyear2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102160-01' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_midyear2a12 = pg_query($pg_connection, $pg_query_midyear2a12);
if (!$pg_result_midyear2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_midyear2a12)) {

    $midyear_allot2a12_num = $pg_row['midyear2a12_allot'];
    $midyear_allot2a12 = number_format($pg_row['midyear2a12_allot'], 2);
    if ($midyear_allot2a12 == "0.00") {
        $midyear_allot2a12 = "-";
    }

    $midyear2a12_num = $pg_row['midyear2a12'];
    $midyear2a12 = number_format($pg_row['midyear2a12'], 2);
    if ($midyear2a12 == "0.00") {
        $midyear2a12 = "-";
    }

    $midyear2a12_total_num = $pg_row['midyear2a12_total'];
    $midyear2a12_total = number_format($pg_row['midyear2a12_total'], 2);
    if ($midyear2a12_total == "0.00") {
        $midyear2a12_total = "-";
    }

    $midyear2a12_balance_num = ($pg_row['midyear2a12_allot'] - $pg_row['midyear2a12_total']);
    $midyear2a12_balance = number_format(($pg_row['midyear2a12_allot'] - $pg_row['midyear2a12_total']), 2);
    if ($midyear2a12_balance == "0.00") {
        $midyear2a12_balance = "-";
    }
}
// =============================== midyear =============================== //




// =============================== pagibig =============================== //
// pagibig 1A1
$pg_query_pagibig1a1 = "
    SELECT 
        allotment AS pagibig1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig1a1_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103020%'  
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pagibig1a1 = pg_query($pg_connection, $pg_query_pagibig1a1);
if (!$pg_result_pagibig1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pagibig1a1)) {

    $pagibig_allot1a1_num = $pg_row['pagibig1a1_allot'];
    $pagibig_allot1a1 = number_format($pg_row['pagibig1a1_allot'], 2);
    if ($pagibig_allot1a1 == "0.00") {
        $pagibig_allot1a1 = "-";
    }

    $pagibig1A1_num = $pg_row['pagibig1a1'];
    $pagibig1A1 = number_format($pg_row['pagibig1a1'], 2);
    if ($pagibig1A1 == "0.00") {
        $pagibig1A1 = "-";
    }

    $pagibig1A1_total_num = $pg_row['pagibig1a1_total'];
    $pagibig1A1_total = number_format($pg_row['pagibig1a1_total'], 2);
    if ($pagibig1A1_total == "0.00") {
        $pagibig1A1_total = "-";
    }

    $pagibig1A1_balance_num = ($pg_row['pagibig1a1_allot'] - $pg_row['pagibig1a1_total']);
    $pagibig1A1_balance = number_format(($pg_row['pagibig1a1_allot'] - $pg_row['pagibig1a1_total']), 2);
    if ($pagibig1A1_balance == "0.00") {
        $pagibig1A1_balance = "-";
    }
}


// pagibig 2a11
$pg_query_pagibig2a11 = "
    SELECT 
        allotment AS pagibig2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig2a11_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103020%'  
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pagibig2a11 = pg_query($pg_connection, $pg_query_pagibig2a11);
if (!$pg_result_pagibig2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pagibig2a11)) {

    $pagibig_allot2a11_num = $pg_row['pagibig2a11_allot'];
    $pagibig_allot2a11 = number_format($pg_row['pagibig2a11_allot'], 2);
    if ($pagibig_allot2a11 == "0.00") {
        $pagibig_allot2a11 = "-";
    }

    $pagibig2a11_num = $pg_row['pagibig2a11'];
    $pagibig2a11 = number_format($pg_row['pagibig2a11'], 2);
    if ($pagibig2a11 == "0.00") {
        $pagibig2a11 = "-";
    }

    $pagibig2a11_total_num = $pg_row['pagibig2a11_total'];
    $pagibig2a11_total = number_format($pg_row['pagibig2a11_total'], 2);
    if ($pagibig2a11_total == "0.00") {
        $pagibig2a11_total = "-";
    }

    $pagibig2a11_balance_num = ($pg_row['pagibig2a11_allot'] - $pg_row['pagibig2a11_total']);
    $pagibig2a11_balance = number_format(($pg_row['pagibig2a11_allot'] - $pg_row['pagibig2a11_total']), 2);
    if ($pagibig2a11_balance == "0.00") {
        $pagibig2a11_balance = "-";
    }
}


// pagibig 2a12
$pg_query_pagibig2a12 = "
    SELECT 
        allotment AS pagibig2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103020%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS pagibig2a12_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103020%'  
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_pagibig2a12 = pg_query($pg_connection, $pg_query_pagibig2a12);
if (!$pg_result_pagibig2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_pagibig2a12)) {

    $pagibig_allot2a12_num = $pg_row['pagibig2a12_allot'];
    $pagibig_allot2a12 = number_format($pg_row['pagibig2a12_allot'], 2);
    if ($pagibig_allot2a12 == "0.00") {
        $pagibig_allot2a12 = "-";
    }

    $pagibig2a12_num = $pg_row['pagibig2a12'];
    $pagibig2a12 = number_format($pg_row['pagibig2a12'], 2);
    if ($pagibig2a12 == "0.00") {
        $pagibig2a12 = "-";
    }

    $pagibig2a12_total_num = $pg_row['pagibig2a12_total'];
    $pagibig2a12_total = number_format($pg_row['pagibig2a12_total'], 2);
    if ($pagibig2a12_total == "0.00") {
        $pagibig2a12_total = "-";
    }

    $pagibig2a12_balance_num = ($pg_row['pagibig2a12_allot'] - $pg_row['pagibig2a12_total']);
    $pagibig2a12_balance = number_format(($pg_row['pagibig2a12_allot'] - $pg_row['pagibig2a12_total']), 2);
    if ($pagibig2a12_balance == "0.00") {
        $pagibig2a12_balance = "-";
    }
}
// =============================== pagibig =============================== //




// =============================== philhealth =============================== //
// philhealth 1A1
$pg_query_philhealth1a1 = "
    SELECT 
        allotment AS philhealth1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth1a1_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103030%'  
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_philhealth1a1 = pg_query($pg_connection, $pg_query_philhealth1a1);
if (!$pg_result_philhealth1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_philhealth1a1)) {

    $philhealth_allot1a1_num = $pg_row['philhealth1a1_allot'];
    $philhealth_allot1a1 = number_format($pg_row['philhealth1a1_allot'], 2);
    if ($philhealth_allot1a1 == "0.00") {
        $philhealth_allot1a1 = "-";
    }

    $philhealth1A1_num = $pg_row['philhealth1a1'];
    $philhealth1A1 = number_format($pg_row['philhealth1a1'], 2);
    if ($philhealth1A1 == "0.00") {
        $philhealth1A1 = "-";
    }

    $philhealth1A1_total_num = $pg_row['philhealth1a1_total'];
    $philhealth1A1_total = number_format($pg_row['philhealth1a1_total'], 2);
    if ($philhealth1A1_total == "0.00") {
        $philhealth1A1_total = "-";
    }

    $philhealth1A1_balance_num = ($pg_row['philhealth1a1_allot'] - $pg_row['philhealth1a1_total']);
    $philhealth1A1_balance = number_format(($pg_row['philhealth1a1_allot'] - $pg_row['philhealth1a1_total']), 2);
    if ($philhealth1A1_balance == "0.00") {
        $philhealth1A1_balance = "-";
    }
}


// philhealth 2a11
$pg_query_philhealth2a11 = "
    SELECT 
        allotment AS philhealth2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth2a11_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103030%'  
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_philhealth2a11 = pg_query($pg_connection, $pg_query_philhealth2a11);
if (!$pg_result_philhealth2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_philhealth2a11)) {

    $philhealth_allot2a11_num = $pg_row['philhealth2a11_allot'];
    $philhealth_allot2a11 = number_format($pg_row['philhealth2a11_allot'], 2);
    if ($philhealth_allot2a11 == "0.00") {
        $philhealth_allot2a11 = "-";
    }

    $philhealth2a11_num = $pg_row['philhealth2a11'];
    $philhealth2a11 = number_format($pg_row['philhealth2a11'], 2);
    if ($philhealth2a11 == "0.00") {
        $philhealth2a11 = "-";
    }

    $philhealth2a11_total_num = $pg_row['philhealth2a11_total'];
    $philhealth2a11_total = number_format($pg_row['philhealth2a11_total'], 2);
    if ($philhealth2a11_total == "0.00") {
        $philhealth2a11_total = "-";
    }

    $philhealth2a11_balance_num = ($pg_row['philhealth2a11_allot'] - $pg_row['philhealth2a11_total']);
    $philhealth2a11_balance = number_format(($pg_row['philhealth2a11_allot'] - $pg_row['philhealth2a11_total']), 2);
    if ($philhealth2a11_balance == "0.00") {
        $philhealth2a11_balance = "-";
    }
}


// philhealth 2a12
$pg_query_philhealth2a12 = "
    SELECT 
        allotment AS philhealth2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103030%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS philhealth2a12_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103030%'  
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_philhealth2a12 = pg_query($pg_connection, $pg_query_philhealth2a12);
if (!$pg_result_philhealth2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_philhealth2a12)) {

    $philhealth_allot2a12_num = $pg_row['philhealth2a12_allot'];
    $philhealth_allot2a12 = number_format($pg_row['philhealth2a12_allot'], 2);
    if ($philhealth_allot2a12 == "0.00") {
        $philhealth_allot2a12 = "-";
    }

    $philhealth2a12_num = $pg_row['philhealth2a12'];
    $philhealth2a12 = number_format($pg_row['philhealth2a12'], 2);
    if ($philhealth2a12 == "0.00") {
        $philhealth2a12 = "-";
    }

    $philhealth2a12_total_num = $pg_row['philhealth2a12_total'];
    $philhealth2a12_total = number_format($pg_row['philhealth2a12_total'], 2);
    if ($philhealth2a12_total == "0.00") {
        $philhealth2a12_total = "-";
    }

    $philhealth2a12_balance_num = ($pg_row['philhealth2a12_allot'] - $pg_row['philhealth2a12_total']);
    $philhealth2a12_balance = number_format(($pg_row['philhealth2a12_allot'] - $pg_row['philhealth2a12_total']), 2);
    if ($philhealth2a12_balance == "0.00") {
        $philhealth2a12_balance = "-";
    }
}
// =============================== philhealth =============================== //




// =============================== ecip =============================== //
// ecip 1A1
$pg_query_ecip1a1 = "
    SELECT 
        allotment AS ecip1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip1a1_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103040%'  
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_ecip1a1 = pg_query($pg_connection, $pg_query_ecip1a1);
if (!$pg_result_ecip1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_ecip1a1)) {

    $ecip_allot1a1_num = $pg_row['ecip1a1_allot'];
    $ecip_allot1a1 = number_format($pg_row['ecip1a1_allot'], 2);
    if ($ecip_allot1a1 == "0.00") {
        $ecip_allot1a1 = "-";
    }

    $ecip1A1_num = $pg_row['ecip1a1'];
    $ecip1A1 = number_format($pg_row['ecip1a1'], 2);
    if ($ecip1A1 == "0.00") {
        $ecip1A1 = "-";
    }

    $ecip1A1_total_num = $pg_row['ecip1a1_total'];
    $ecip1A1_total = number_format($pg_row['ecip1a1_total'], 2);
    if ($ecip1A1_total == "0.00") {
        $ecip1A1_total = "-";
    }

    $ecip1A1_balance_num = ($pg_row['ecip1a1_allot'] - $pg_row['ecip1a1_total']);
    $ecip1A1_balance = number_format(($pg_row['ecip1a1_allot'] - $pg_row['ecip1a1_total']), 2);
    if ($ecip1A1_balance == "0.00") {
        $ecip1A1_balance = "-";
    }
}


// ecip 2a11
$pg_query_ecip2a11 = "
    SELECT 
        allotment AS ecip2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip2a11_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103040%'  
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_ecip2a11 = pg_query($pg_connection, $pg_query_ecip2a11);
if (!$pg_result_ecip2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_ecip2a11)) {

    $ecip_allot2a11_num = $pg_row['ecip2a11_allot'];
    $ecip_allot2a11 = number_format($pg_row['ecip2a11_allot'], 2);
    if ($ecip_allot2a11 == "0.00") {
        $ecip_allot2a11 = "-";
    }

    $ecip2a11_num = $pg_row['ecip2a11'];
    $ecip2a11 = number_format($pg_row['ecip2a11'], 2);
    if ($ecip2a11 == "0.00") {
        $ecip2a11 = "-";
    }

    $ecip2a11_total_num = $pg_row['ecip2a11_total'];
    $ecip2a11_total = number_format($pg_row['ecip2a11_total'], 2);
    if ($ecip2a11_total == "0.00") {
        $ecip2a11_total = "-";
    }

    $ecip2a11_balance_num = ($pg_row['ecip2a11_allot'] - $pg_row['ecip2a11_total']);
    $ecip2a11_balance = number_format(($pg_row['ecip2a11_allot'] - $pg_row['ecip2a11_total']), 2);
    if ($ecip2a11_balance == "0.00") {
        $ecip2a11_balance = "-";
    }
}


// ecip 2a12
$pg_query_ecip2a12 = "
    SELECT 
        allotment AS ecip2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs LIKE '50103040%' 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ecip2a12_total

    FROM allotment a 
    WHERE a.uacs LIKE '50103040%'  
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_ecip2a12 = pg_query($pg_connection, $pg_query_ecip2a12);
if (!$pg_result_ecip2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_ecip2a12)) {

    $ecip_allot2a12_num = $pg_row['ecip2a12_allot'];
    $ecip_allot2a12 = number_format($pg_row['ecip2a12_allot'], 2);
    if ($ecip_allot2a12 == "0.00") {
        $ecip_allot2a12 = "-";
    }

    $ecip2a12_num = $pg_row['ecip2a12'];
    $ecip2a12 = number_format($pg_row['ecip2a12'], 2);
    if ($ecip2a12 == "0.00") {
        $ecip2a12 = "-";
    }

    $ecip2a12_total_num = $pg_row['ecip2a12_total'];
    $ecip2a12_total = number_format($pg_row['ecip2a12_total'], 2);
    if ($ecip2a12_total == "0.00") {
        $ecip2a12_total = "-";
    }

    $ecip2a12_balance_num = ($pg_row['ecip2a12_allot'] - $pg_row['ecip2a12_total']);
    $ecip2a12_balance = number_format(($pg_row['ecip2a12_allot'] - $pg_row['ecip2a12_total']), 2);
    if ($ecip2a12_balance == "0.00") {
        $ecip2a12_balance = "-";
    }
}
// =============================== ecip =============================== //




// =============================== subsistence =============================== //
// subsistence 1A1
$pg_query_subsistence1a1 = "
    SELECT 
        allotment AS subsistence1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102050-02' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_subsistence1a1 = pg_query($pg_connection, $pg_query_subsistence1a1);
if (!$pg_result_subsistence1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_subsistence1a1)) {

    $subsistence_allot1a1_num = $pg_row['subsistence1a1_allot'];
    $subsistence_allot1a1 = number_format($pg_row['subsistence1a1_allot'], 2);
    if ($subsistence_allot1a1 == "0.00") {
        $subsistence_allot1a1 = "-";
    }

    $subsistence1A1_num = $pg_row['subsistence1a1'];
    $subsistence1A1 = number_format($pg_row['subsistence1a1'], 2);
    if ($subsistence1A1 == "0.00") {
        $subsistence1A1 = "-";
    }

    $subsistence1A1_total_num = $pg_row['subsistence1a1_total'];
    $subsistence1A1_total = number_format($pg_row['subsistence1a1_total'], 2);
    if ($subsistence1A1_total == "0.00") {
        $subsistence1A1_total = "-";
    }

    $subsistence1A1_balance_num = ($pg_row['subsistence1a1_allot'] - $pg_row['subsistence1a1_total']);
    $subsistence1A1_balance = number_format(($pg_row['subsistence1a1_allot'] - $pg_row['subsistence1a1_total']), 2);
    if ($subsistence1A1_balance == "0.00") {
        $subsistence1A1_balance = "-";
    }
}


// subsistence 2a11
$pg_query_subsistence2a11 = "
    SELECT 
        allotment AS subsistence2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102050-02' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_subsistence2a11 = pg_query($pg_connection, $pg_query_subsistence2a11);
if (!$pg_result_subsistence2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_subsistence2a11)) {

    $subsistence_allot2a11_num = $pg_row['subsistence2a11_allot'];
    $subsistence_allot2a11 = number_format($pg_row['subsistence2a11_allot'], 2);
    if ($subsistence_allot2a11 == "0.00") {
        $subsistence_allot2a11 = "-";
    }

    $subsistence2a11_num = $pg_row['subsistence2a11'];
    $subsistence2a11 = number_format($pg_row['subsistence2a11'], 2);
    if ($subsistence2a11 == "0.00") {
        $subsistence2a11 = "-";
    }

    $subsistence2a11_total_num = $pg_row['subsistence2a11_total'];
    $subsistence2a11_total = number_format($pg_row['subsistence2a11_total'], 2);
    if ($subsistence2a11_total == "0.00") {
        $subsistence2a11_total = "-";
    }

    $subsistence2a11_balance_num = ($pg_row['subsistence2a11_allot'] - $pg_row['subsistence2a11_total']);
    $subsistence2a11_balance = number_format(($pg_row['subsistence2a11_allot'] - $pg_row['subsistence2a11_total']), 2);
    if ($subsistence2a11_balance == "0.00") {
        $subsistence2a11_balance = "-";
    }
}


// subsistence 2a12
$pg_query_subsistence2a12 = "
    SELECT 
        allotment AS subsistence2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS subsistence2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102050-02' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_subsistence2a12 = pg_query($pg_connection, $pg_query_subsistence2a12);
if (!$pg_result_subsistence2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_subsistence2a12)) {

    $subsistence_allot2a12_num = $pg_row['subsistence2a12_allot'];
    $subsistence_allot2a12 = number_format($pg_row['subsistence2a12_allot'], 2);
    if ($subsistence_allot2a12 == "0.00") {
        $subsistence_allot2a12 = "-";
    }

    $subsistence2a12_num = $pg_row['subsistence2a12'];
    $subsistence2a12 = number_format($pg_row['subsistence2a12'], 2);
    if ($subsistence2a12 == "0.00") {
        $subsistence2a12 = "-";
    }

    $subsistence2a12_total_num = $pg_row['subsistence2a12_total'];
    $subsistence2a12_total = number_format($pg_row['subsistence2a12_total'], 2);
    if ($subsistence2a12_total == "0.00") {
        $subsistence2a12_total = "-";
    }

    $subsistence2a12_balance_num = ($pg_row['subsistence2a12_allot'] - $pg_row['subsistence2a12_total']);
    $subsistence2a12_balance = number_format(($pg_row['subsistence2a12_allot'] - $pg_row['subsistence2a12_total']), 2);
    if ($subsistence2a12_balance == "0.00") {
        $subsistence2a12_balance = "-";
    }
}
// =============================== subsistence =============================== //




// =============================== laundry =============================== //
// laundry 1A1
$pg_query_laundry1a1 = "
    SELECT 
        allotment AS laundry1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102060-03' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_laundry1a1 = pg_query($pg_connection, $pg_query_laundry1a1);
if (!$pg_result_laundry1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_laundry1a1)) {

    $laundry_allot1a1_num = $pg_row['laundry1a1_allot'];
    $laundry_allot1a1 = number_format($pg_row['laundry1a1_allot'], 2);
    if ($laundry_allot1a1 == "0.00") {
        $laundry_allot1a1 = "-";
    }

    $laundry1A1_num = $pg_row['laundry1a1'];
    $laundry1A1 = number_format($pg_row['laundry1a1'], 2);
    if ($laundry1A1 == "0.00") {
        $laundry1A1 = "-";
    }

    $laundry1A1_total_num = $pg_row['laundry1a1_total'];
    $laundry1A1_total = number_format($pg_row['laundry1a1_total'], 2);
    if ($laundry1A1_total == "0.00") {
        $laundry1A1_total = "-";
    }

    $laundry1A1_balance_num = ($pg_row['laundry1a1_allot'] - $pg_row['laundry1a1_total']);
    $laundry1A1_balance = number_format(($pg_row['laundry1a1_allot'] - $pg_row['laundry1a1_total']), 2);
    if ($laundry1A1_balance == "0.00") {
        $laundry1A1_balance = "-";
    }
}


// laundry 2a11
$pg_query_laundry2a11 = "
    SELECT 
        allotment AS laundry2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102060-03' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_laundry2a11 = pg_query($pg_connection, $pg_query_laundry2a11);
if (!$pg_result_laundry2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_laundry2a11)) {

    $laundry_allot2a11_num = $pg_row['laundry2a11_allot'];
    $laundry_allot2a11 = number_format($pg_row['laundry2a11_allot'], 2);
    if ($laundry_allot2a11 == "0.00") {
        $laundry_allot2a11 = "-";
    }

    $laundry2a11_num = $pg_row['laundry2a11'];
    $laundry2a11 = number_format($pg_row['laundry2a11'], 2);
    if ($laundry2a11 == "0.00") {
        $laundry2a11 = "-";
    }

    $laundry2a11_total_num = $pg_row['laundry2a11_total'];
    $laundry2a11_total = number_format($pg_row['laundry2a11_total'], 2);
    if ($laundry2a11_total == "0.00") {
        $laundry2a11_total = "-";
    }

    $laundry2a11_balance_num = ($pg_row['laundry2a11_allot'] - $pg_row['laundry2a11_total']);
    $laundry2a11_balance = number_format(($pg_row['laundry2a11_allot'] - $pg_row['laundry2a11_total']), 2);
    if ($laundry2a11_balance == "0.00") {
        $laundry2a11_balance = "-";
    }
}


// laundry 2a12
$pg_query_laundry2a12 = "
    SELECT 
        allotment AS laundry2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS laundry2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102060-03' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_laundry2a12 = pg_query($pg_connection, $pg_query_laundry2a12);
if (!$pg_result_laundry2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_laundry2a12)) {

    $laundry_allot2a12_num = $pg_row['laundry2a12_allot'];
    $laundry_allot2a12 = number_format($pg_row['laundry2a12_allot'], 2);
    if ($laundry_allot2a12 == "0.00") {
        $laundry_allot2a12 = "-";
    }

    $laundry2a12_num = $pg_row['laundry2a12'];
    $laundry2a12 = number_format($pg_row['laundry2a12'], 2);
    if ($laundry2a12 == "0.00") {
        $laundry2a12 = "-";
    }

    $laundry2a12_total_num = $pg_row['laundry2a12_total'];
    $laundry2a12_total = number_format($pg_row['laundry2a12_total'], 2);
    if ($laundry2a12_total == "0.00") {
        $laundry2a12_total = "-";
    }

    $laundry2a12_balance_num = ($pg_row['laundry2a12_allot'] - $pg_row['laundry2a12_total']);
    $laundry2a12_balance = number_format(($pg_row['laundry2a12_allot'] - $pg_row['laundry2a12_total']), 2);
    if ($laundry2a12_balance == "0.00") {
        $laundry2a12_balance = "-";
    }
}
// =============================== laundry =============================== //




// =============================== hazard =============================== //
// hazard 1A1
$pg_query_hazard1a1 = "
    SELECT 
        allotment AS hazard1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102110-04' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_hazard1a1 = pg_query($pg_connection, $pg_query_hazard1a1);
if (!$pg_result_hazard1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_hazard1a1)) {

    $hazard_allot1a1_num = $pg_row['hazard1a1_allot'];
    $hazard_allot1a1 = number_format($pg_row['hazard1a1_allot'], 2);
    if ($hazard_allot1a1 == "0.00") {
        $hazard_allot1a1 = "-";
    }

    $hazard1A1_num = $pg_row['hazard1a1'];
    $hazard1A1 = number_format($pg_row['hazard1a1'], 2);
    if ($hazard1A1 == "0.00") {
        $hazard1A1 = "-";
    }

    $hazard1A1_total_num = $pg_row['hazard1a1_total'];
    $hazard1A1_total = number_format($pg_row['hazard1a1_total'], 2);
    if ($hazard1A1_total == "0.00") {
        $hazard1A1_total = "-";
    }

    $hazard1A1_balance_num = ($pg_row['hazard1a1_allot'] - $pg_row['hazard1a1_total']);
    $hazard1A1_balance = number_format(($pg_row['hazard1a1_allot'] - $pg_row['hazard1a1_total']), 2);
    if ($hazard1A1_balance == "0.00") {
        $hazard1A1_balance = "-";
    }
}


// hazard 2a11
$pg_query_hazard2a11 = "
    SELECT 
        allotment AS hazard2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102110-04' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_hazard2a11 = pg_query($pg_connection, $pg_query_hazard2a11);
if (!$pg_result_hazard2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_hazard2a11)) {

    $hazard_allot2a11_num = $pg_row['hazard2a11_allot'];
    $hazard_allot2a11 = number_format($pg_row['hazard2a11_allot'], 2);
    if ($hazard_allot2a11 == "0.00") {
        $hazard_allot2a11 = "-";
    }

    $hazard2a11_num = $pg_row['hazard2a11'];
    $hazard2a11 = number_format($pg_row['hazard2a11'], 2);
    if ($hazard2a11 == "0.00") {
        $hazard2a11 = "-";
    }

    $hazard2a11_total_num = $pg_row['hazard2a11_total'];
    $hazard2a11_total = number_format($pg_row['hazard2a11_total'], 2);
    if ($hazard2a11_total == "0.00") {
        $hazard2a11_total = "-";
    }

    $hazard2a11_balance_num = ($pg_row['hazard2a11_allot'] - $pg_row['hazard2a11_total']);
    $hazard2a11_balance = number_format(($pg_row['hazard2a11_allot'] - $pg_row['hazard2a11_total']), 2);
    if ($hazard2a11_balance == "0.00") {
        $hazard2a11_balance = "-";
    }
}


// hazard 2a12
$pg_query_hazard2a12 = "
    SELECT 
        allotment AS hazard2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hazard2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102110-04' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_hazard2a12 = pg_query($pg_connection, $pg_query_hazard2a12);
if (!$pg_result_hazard2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_hazard2a12)) {

    $hazard_allot2a12_num = $pg_row['hazard2a12_allot'];
    $hazard_allot2a12 = number_format($pg_row['hazard2a12_allot'], 2);
    if ($hazard_allot2a12 == "0.00") {
        $hazard_allot2a12 = "-";
    }

    $hazard2a12_num = $pg_row['hazard2a12'];
    $hazard2a12 = number_format($pg_row['hazard2a12'], 2);
    if ($hazard2a12 == "0.00") {
        $hazard2a12 = "-";
    }

    $hazard2a12_total_num = $pg_row['hazard2a12_total'];
    $hazard2a12_total = number_format($pg_row['hazard2a12_total'], 2);
    if ($hazard2a12_total == "0.00") {
        $hazard2a12_total = "-";
    }

    $hazard2a12_balance_num = ($pg_row['hazard2a12_allot'] - $pg_row['hazard2a12_total']);
    $hazard2a12_balance = number_format(($pg_row['hazard2a12_allot'] - $pg_row['hazard2a12_total']), 2);
    if ($hazard2a12_balance == "0.00") {
        $hazard2a12_balance = "-";
    }
}
// =============================== hazard =============================== //




// =============================== longetivity =============================== //
// longetivity 1A1
$pg_query_longetivity1a1 = "
    SELECT 
        allotment AS longetivity1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity1a1_total

    FROM allotment a 
    WHERE a.uacs = '50102120-03' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_longetivity1a1 = pg_query($pg_connection, $pg_query_longetivity1a1);
if (!$pg_result_longetivity1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_longetivity1a1)) {

    $longetivity_allot1a1_num = $pg_row['longetivity1a1_allot'];
    $longetivity_allot1a1 = number_format($pg_row['longetivity1a1_allot'], 2);
    if ($longetivity_allot1a1 == "0.00") {
        $longetivity_allot1a1 = "-";
    }

    $longetivity1A1_num = $pg_row['longetivity1a1'];
    $longetivity1A1 = number_format($pg_row['longetivity1a1'], 2);
    if ($longetivity1A1 == "0.00") {
        $longetivity1A1 = "-";
    }

    $longetivity1A1_total_num = $pg_row['longetivity1a1_total'];
    $longetivity1A1_total = number_format($pg_row['longetivity1a1_total'], 2);
    if ($longetivity1A1_total == "0.00") {
        $longetivity1A1_total = "-";
    }

    $longetivity1A1_balance_num = ($pg_row['longetivity1a1_allot'] - $pg_row['longetivity1a1_total']);
    $longetivity1A1_balance = number_format(($pg_row['longetivity1a1_allot'] - $pg_row['longetivity1a1_total']), 2);
    if ($longetivity1A1_balance == "0.00") {
        $longetivity1A1_balance = "-";
    }
}


// longetivity 2a11
$pg_query_longetivity2a11 = "
    SELECT 
        allotment AS longetivity2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity2a11_total

    FROM allotment a 
    WHERE a.uacs = '50102120-03' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_longetivity2a11 = pg_query($pg_connection, $pg_query_longetivity2a11);
if (!$pg_result_longetivity2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_longetivity2a11)) {

    $longetivity_allot2a11_num = $pg_row['longetivity2a11_allot'];
    $longetivity_allot2a11 = number_format($pg_row['longetivity2a11_allot'], 2);
    if ($longetivity_allot2a11 == "0.00") {
        $longetivity_allot2a11 = "-";
    }

    $longetivity2a11_num = $pg_row['longetivity2a11'];
    $longetivity2a11 = number_format($pg_row['longetivity2a11'], 2);
    if ($longetivity2a11 == "0.00") {
        $longetivity2a11 = "-";
    }

    $longetivity2a11_total_num = $pg_row['longetivity2a11_total'];
    $longetivity2a11_total = number_format($pg_row['longetivity2a11_total'], 2);
    if ($longetivity2a11_total == "0.00") {
        $longetivity2a11_total = "-";
    }

    $longetivity2a11_balance_num = ($pg_row['longetivity2a11_allot'] - $pg_row['longetivity2a11_total']);
    $longetivity2a11_balance = number_format(($pg_row['longetivity2a11_allot'] - $pg_row['longetivity2a11_total']), 2);
    if ($longetivity2a11_balance == "0.00") {
        $longetivity2a11_balance = "-";
    }
}


// longetivity 2a12
$pg_query_longetivity2a12 = "
    SELECT 
        allotment AS longetivity2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS longetivity2a12_total

    FROM allotment a 
    WHERE a.uacs = '50102120-03' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_longetivity2a12 = pg_query($pg_connection, $pg_query_longetivity2a12);
if (!$pg_result_longetivity2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_longetivity2a12)) {

    $longetivity_allot2a12_num = $pg_row['longetivity2a12_allot'];
    $longetivity_allot2a12 = number_format($pg_row['longetivity2a12_allot'], 2);
    if ($longetivity_allot2a12 == "0.00") {
        $longetivity_allot2a12 = "-";
    }

    $longetivity2a12_num = $pg_row['longetivity2a12'];
    $longetivity2a12 = number_format($pg_row['longetivity2a12'], 2);
    if ($longetivity2a12 == "0.00") {
        $longetivity2a12 = "-";
    }

    $longetivity2a12_total_num = $pg_row['longetivity2a12_total'];
    $longetivity2a12_total = number_format($pg_row['longetivity2a12_total'], 2);
    if ($longetivity2a12_total == "0.00") {
        $longetivity2a12_total = "-";
    }

    $longetivity2a12_balance_num = ($pg_row['longetivity2a12_allot'] - $pg_row['longetivity2a12_total']);
    $longetivity2a12_balance = number_format(($pg_row['longetivity2a12_allot'] - $pg_row['longetivity2a12_total']), 2);
    if ($longetivity2a12_balance == "0.00") {
        $longetivity2a12_balance = "-";
    }
}
// =============================== longetivity =============================== //




// =============================== localtravel =============================== //
// localtravel 1A1
$pg_query_localtravel1a1 = "
    SELECT 
        allotment AS localtravel1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel1a1_total

    FROM allotment a 
    WHERE a.uacs = '50201010-00' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_localtravel1a1 = pg_query($pg_connection, $pg_query_localtravel1a1);
if (!$pg_result_localtravel1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_localtravel1a1)) {

    $localtravel_allot1a1_num = $pg_row['localtravel1a1_allot'];
    $localtravel_allot1a1 = number_format($pg_row['localtravel1a1_allot'], 2);
    if ($localtravel_allot1a1 == "0.00") {
        $localtravel_allot1a1 = "-";
    }

    $localtravel1A1_num = $pg_row['localtravel1a1'];
    $localtravel1A1 = number_format($pg_row['localtravel1a1'], 2);
    if ($localtravel1A1 == "0.00") {
        $localtravel1A1 = "-";
    }

    $localtravel1A1_total_num = $pg_row['localtravel1a1_total'];
    $localtravel1A1_total = number_format($pg_row['localtravel1a1_total'], 2);
    if ($localtravel1A1_total == "0.00") {
        $localtravel1A1_total = "-";
    }

    $localtravel1A1_balance_num = ($pg_row['localtravel1a1_allot'] - $pg_row['localtravel1a1_total']);
    $localtravel1A1_balance = number_format(($pg_row['localtravel1a1_allot'] - $pg_row['localtravel1a1_total']), 2);
    if ($localtravel1A1_balance == "0.00") {
        $localtravel1A1_balance = "-";
    }
}


// localtravel 2a11
$pg_query_localtravel2a11 = "
    SELECT 
        allotment AS localtravel2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel2a11_total

    FROM allotment a 
    WHERE a.uacs = '50201010-00' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_localtravel2a11 = pg_query($pg_connection, $pg_query_localtravel2a11);
if (!$pg_result_localtravel2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_localtravel2a11)) {

    $localtravel_allot2a11_num = $pg_row['localtravel2a11_allot'];
    $localtravel_allot2a11 = number_format($pg_row['localtravel2a11_allot'], 2);
    if ($localtravel_allot2a11 == "0.00") {
        $localtravel_allot2a11 = "-";
    }

    $localtravel2a11_num = $pg_row['localtravel2a11'];
    $localtravel2a11 = number_format($pg_row['localtravel2a11'], 2);
    if ($localtravel2a11 == "0.00") {
        $localtravel2a11 = "-";
    }

    $localtravel2a11_total_num = $pg_row['localtravel2a11_total'];
    $localtravel2a11_total = number_format($pg_row['localtravel2a11_total'], 2);
    if ($localtravel2a11_total == "0.00") {
        $localtravel2a11_total = "-";
    }

    $localtravel2a11_balance_num = ($pg_row['localtravel2a11_allot'] - $pg_row['localtravel2a11_total']);
    $localtravel2a11_balance = number_format(($pg_row['localtravel2a11_allot'] - $pg_row['localtravel2a11_total']), 2);
    if ($localtravel2a11_balance == "0.00") {
        $localtravel2a11_balance = "-";
    }
}


// localtravel 2a12
$pg_query_localtravel2a12 = "
    SELECT 
        allotment AS localtravel2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS localtravel2a12_total

    FROM allotment a 
    WHERE a.uacs = '50201010-00' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_localtravel2a12 = pg_query($pg_connection, $pg_query_localtravel2a12);
if (!$pg_result_localtravel2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_localtravel2a12)) {

    $localtravel_allot2a12_num = $pg_row['localtravel2a12_allot'];
    $localtravel_allot2a12 = number_format($pg_row['localtravel2a12_allot'], 2);
    if ($localtravel_allot2a12 == "0.00") {
        $localtravel_allot2a12 = "-";
    }

    $localtravel2a12_num = $pg_row['localtravel2a12'];
    $localtravel2a12 = number_format($pg_row['localtravel2a12'], 2);
    if ($localtravel2a12 == "0.00") {
        $localtravel2a12 = "-";
    }

    $localtravel2a12_total_num = $pg_row['localtravel2a12_total'];
    $localtravel2a12_total = number_format($pg_row['localtravel2a12_total'], 2);
    if ($localtravel2a12_total == "0.00") {
        $localtravel2a12_total = "-";
    }

    $localtravel2a12_balance_num = ($pg_row['localtravel2a12_allot'] - $pg_row['localtravel2a12_total']);
    $localtravel2a12_balance = number_format(($pg_row['localtravel2a12_allot'] - $pg_row['localtravel2a12_total']), 2);
    if ($localtravel2a12_balance == "0.00") {
        $localtravel2a12_balance = "-";
    }
}
// =============================== localtravel =============================== //




// =============================== foreigntravel =============================== //
// foreigntravel 1A1
$pg_query_foreigntravel1a1 = "
    SELECT 
        allotment AS foreigntravel1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel1a1_total

    FROM allotment a 
    WHERE a.uacs = '50201020-00' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_foreigntravel1a1 = pg_query($pg_connection, $pg_query_foreigntravel1a1);
if (!$pg_result_foreigntravel1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_foreigntravel1a1)) {

    $foreigntravel_allot1a1_num = $pg_row['foreigntravel1a1_allot'];
    $foreigntravel_allot1a1 = number_format($pg_row['foreigntravel1a1_allot'], 2);
    if ($foreigntravel_allot1a1 == "0.00") {
        $foreigntravel_allot1a1 = "-";
    }

    $foreigntravel1A1_num = $pg_row['foreigntravel1a1'];
    $foreigntravel1A1 = number_format($pg_row['foreigntravel1a1'], 2);
    if ($foreigntravel1A1 == "0.00") {
        $foreigntravel1A1 = "-";
    }

    $foreigntravel1A1_total_num = $pg_row['foreigntravel1a1_total'];
    $foreigntravel1A1_total = number_format($pg_row['foreigntravel1a1_total'], 2);
    if ($foreigntravel1A1_total == "0.00") {
        $foreigntravel1A1_total = "-";
    }

    $foreigntravel1A1_balance_num = ($pg_row['foreigntravel1a1_allot'] - $pg_row['foreigntravel1a1_total']);
    $foreigntravel1A1_balance = number_format(($pg_row['foreigntravel1a1_allot'] - $pg_row['foreigntravel1a1_total']), 2);
    if ($foreigntravel1A1_balance == "0.00") {
        $foreigntravel1A1_balance = "-";
    }
}


// foreigntravel 2a11
$pg_query_foreigntravel2a11 = "
    SELECT 
        allotment AS foreigntravel2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel2a11_total

    FROM allotment a 
    WHERE a.uacs = '50201020-00' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_foreigntravel2a11 = pg_query($pg_connection, $pg_query_foreigntravel2a11);
if (!$pg_result_foreigntravel2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_foreigntravel2a11)) {

    $foreigntravel_allot2a11_num = $pg_row['foreigntravel2a11_allot'];
    $foreigntravel_allot2a11 = number_format($pg_row['foreigntravel2a11_allot'], 2);
    if ($foreigntravel_allot2a11 == "0.00") {
        $foreigntravel_allot2a11 = "-";
    }

    $foreigntravel2a11_num = $pg_row['foreigntravel2a11'];
    $foreigntravel2a11 = number_format($pg_row['foreigntravel2a11'], 2);
    if ($foreigntravel2a11 == "0.00") {
        $foreigntravel2a11 = "-";
    }

    $foreigntravel2a11_total_num = $pg_row['foreigntravel2a11_total'];
    $foreigntravel2a11_total = number_format($pg_row['foreigntravel2a11_total'], 2);
    if ($foreigntravel2a11_total == "0.00") {
        $foreigntravel2a11_total = "-";
    }

    $foreigntravel2a11_balance_num = ($pg_row['foreigntravel2a11_allot'] - $pg_row['foreigntravel2a11_total']);
    $foreigntravel2a11_balance = number_format(($pg_row['foreigntravel2a11_allot'] - $pg_row['foreigntravel2a11_total']), 2);
    if ($foreigntravel2a11_balance == "0.00") {
        $foreigntravel2a11_balance = "-";
    }
}


// foreigntravel 2a12
$pg_query_foreigntravel2a12 = "
    SELECT 
        allotment AS foreigntravel2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS foreigntravel2a12_total

    FROM allotment a 
    WHERE a.uacs = '50201020-00' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_foreigntravel2a12 = pg_query($pg_connection, $pg_query_foreigntravel2a12);
if (!$pg_result_foreigntravel2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_foreigntravel2a12)) {

    $foreigntravel_allot2a12_num = $pg_row['foreigntravel2a12_allot'];
    $foreigntravel_allot2a12 = number_format($pg_row['foreigntravel2a12_allot'], 2);
    if ($foreigntravel_allot2a12 == "0.00") {
        $foreigntravel_allot2a12 = "-";
    }

    $foreigntravel2a12_num = $pg_row['foreigntravel2a12'];
    $foreigntravel2a12 = number_format($pg_row['foreigntravel2a12'], 2);
    if ($foreigntravel2a12 == "0.00") {
        $foreigntravel2a12 = "-";
    }

    $foreigntravel2a12_total_num = $pg_row['foreigntravel2a12_total'];
    $foreigntravel2a12_total = number_format($pg_row['foreigntravel2a12_total'], 2);
    if ($foreigntravel2a12_total == "0.00") {
        $foreigntravel2a12_total = "-";
    }

    $foreigntravel2a12_balance_num = ($pg_row['foreigntravel2a12_allot'] - $pg_row['foreigntravel2a12_total']);
    $foreigntravel2a12_balance = number_format(($pg_row['foreigntravel2a12_allot'] - $pg_row['foreigntravel2a12_total']), 2);
    if ($foreigntravel2a12_balance == "0.00") {
        $foreigntravel2a12_balance = "-";
    }
}
// =============================== foreigntravel =============================== //




// =============================== scholarship =============================== //
// scholarship 2a12
$pg_query_scholarship2a12 = "
    SELECT 
        allotment AS scholarship2a12_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-102 MERIT'
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS scholarship2a12,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-102 MERIT'
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS scholarship2a12_total

    FROM allotment a 
    WHERE a.uacs = '50201020-00' 
    AND a.allotgroup = '2A1-2' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_scholarship2a12 = pg_query($pg_connection, $pg_query_scholarship2a12);
if (!$pg_result_scholarship2a12) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_scholarship2a12)) {

    $scholarship_allot2a12_num = $pg_row['scholarship2a12_allot'];
    $scholarship_allot2a12 = number_format($pg_row['scholarship2a12_allot'], 2);
    if ($scholarship_allot2a12 == "0.00") {
        $scholarship_allot2a12 = "-";
    }

    $scholarship2a12_num = $pg_row['scholarship2a12'];
    $scholarship2a12 = number_format($pg_row['scholarship2a12'], 2);
    if ($scholarship2a12 == "0.00") {
        $scholarship2a12 = "-";
    }

    $scholarship2a12_total_num = $pg_row['scholarship2a12_total'];
    $scholarship2a12_total = number_format($pg_row['scholarship2a12_total'], 2);
    if ($scholarship2a12_total == "0.00") {
        $scholarship2a12_total = "-";
    }

    $scholarship2a12_balance_num = ($pg_row['scholarship2a12_allot'] - $pg_row['scholarship2a12_total']);
    $scholarship2a12_balance = number_format(($pg_row['scholarship2a12_allot'] - $pg_row['scholarship2a12_total']), 2);
    if ($scholarship2a12_balance == "0.00") {
        $scholarship2a12_balance = "-";
    }
}
// =============================== scholarship =============================== //




// =============================== icttraining =============================== //
// icttraining 1A1
$pg_query_icttraining1a1 = "
    SELECT 
        allotment AS icttraining1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS icttraining1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS icttraining1a1_total

    FROM allotment a 
    WHERE a.uacs = '50202010-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_icttraining1a1 = pg_query($pg_connection, $pg_query_icttraining1a1);
if (!$pg_result_icttraining1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_icttraining1a1)) {

    $icttraining_allot1a1_num = $pg_row['icttraining1a1_allot'];
    $icttraining_allot1a1 = number_format($pg_row['icttraining1a1_allot'], 2);
    if ($icttraining_allot1a1 == "0.00") {
        $icttraining_allot1a1 = "-";
    }

    $icttraining1A1_num = $pg_row['icttraining1a1'];
    $icttraining1A1 = number_format($pg_row['icttraining1a1'], 2);
    if ($icttraining1A1 == "0.00") {
        $icttraining1A1 = "-";
    }

    $icttraining1A1_total_num = $pg_row['icttraining1a1_total'];
    $icttraining1A1_total = number_format($pg_row['icttraining1a1_total'], 2);
    if ($icttraining1A1_total == "0.00") {
        $icttraining1A1_total = "-";
    }

    $icttraining1A1_balance_num = ($pg_row['icttraining1a1_allot'] - $pg_row['icttraining1a1_total']);
    $icttraining1A1_balance = number_format(($pg_row['icttraining1a1_allot'] - $pg_row['icttraining1a1_total']), 2);
    if ($icttraining1A1_balance == "0.00") {
        $icttraining1A1_balance = "-";
    }
}
// =============================== icttraining =============================== //




// =============================== officesupplies =============================== //
// officesupplies 1A1
$pg_query_officesupplies1a1 = "
    SELECT 
        allotment AS officesupplies1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officesupplies1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officesupplies1a1_total

    FROM allotment a 
    WHERE a.uacs = '50203010-02' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_officesupplies1a1 = pg_query($pg_connection, $pg_query_officesupplies1a1);
if (!$pg_result_officesupplies1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_officesupplies1a1)) {

    $officesupplies_allot1a1_num = $pg_row['officesupplies1a1_allot'];
    $officesupplies_allot1a1 = number_format($pg_row['officesupplies1a1_allot'], 2);
    if ($officesupplies_allot1a1 == "0.00") {
        $officesupplies_allot1a1 = "-";
    }

    $officesupplies1A1_num = $pg_row['officesupplies1a1'];
    $officesupplies1A1 = number_format($pg_row['officesupplies1a1'], 2);
    if ($officesupplies1A1 == "0.00") {
        $officesupplies1A1 = "-";
    }

    $officesupplies1A1_total_num = $pg_row['officesupplies1a1_total'];
    $officesupplies1A1_total = number_format($pg_row['officesupplies1a1_total'], 2);
    if ($officesupplies1A1_total == "0.00") {
        $officesupplies1A1_total = "-";
    }

    $officesupplies1A1_balance_num = ($pg_row['officesupplies1a1_allot'] - $pg_row['officesupplies1a1_total']);
    $officesupplies1A1_balance = number_format(($pg_row['officesupplies1a1_allot'] - $pg_row['officesupplies1a1_total']), 2);
    if ($officesupplies1A1_balance == "0.00") {
        $officesupplies1A1_balance = "-";
    }
}


// officesupplies 2a11
$pg_query_officesupplies2a11 = "
    SELECT 
        allotment AS officesupplies2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officesupplies2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officesupplies2a11_total

    FROM allotment a 
    WHERE a.uacs = '50203010-02' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_officesupplies2a11 = pg_query($pg_connection, $pg_query_officesupplies2a11);
if (!$pg_result_officesupplies2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_officesupplies2a11)) {

    $officesupplies_allot2a11_num = $pg_row['officesupplies2a11_allot'];
    $officesupplies_allot2a11 = number_format($pg_row['officesupplies2a11_allot'], 2);
    if ($officesupplies_allot2a11 == "0.00") {
        $officesupplies_allot2a11 = "-";
    }

    $officesupplies2a11_num = $pg_row['officesupplies2a11'];
    $officesupplies2a11 = number_format($pg_row['officesupplies2a11'], 2);
    if ($officesupplies2a11 == "0.00") {
        $officesupplies2a11 = "-";
    }

    $officesupplies2a11_total_num = $pg_row['officesupplies2a11_total'];
    $officesupplies2a11_total = number_format($pg_row['officesupplies2a11_total'], 2);
    if ($officesupplies2a11_total == "0.00") {
        $officesupplies2a11_total = "-";
    }

    $officesupplies2a11_balance_num = ($pg_row['officesupplies2a11_allot'] - $pg_row['officesupplies2a11_total']);
    $officesupplies2a11_balance = number_format(($pg_row['officesupplies2a11_allot'] - $pg_row['officesupplies2a11_total']), 2);
    if ($officesupplies2a11_balance == "0.00") {
        $officesupplies2a11_balance = "-";
    }
}
// =============================== officesupplies =============================== //




// =============================== officeict =============================== //
// officeict 1A1
$pg_query_officeict1a1 = "
    SELECT 
        allotment AS officeict1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officeict1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officeict1a1_total

    FROM allotment a 
    WHERE a.uacs = '50203010-01' 
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_officeict1a1 = pg_query($pg_connection, $pg_query_officeict1a1);
if (!$pg_result_officeict1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_officeict1a1)) {

    $officeict_allot1a1_num = $pg_row['officeict1a1_allot'];
    $officeict_allot1a1 = number_format($pg_row['officeict1a1_allot'], 2);
    if ($officeict_allot1a1 == "0.00") {
        $officeict_allot1a1 = "-";
    }

    $officeict1A1_num = $pg_row['officeict1a1'];
    $officeict1A1 = number_format($pg_row['officeict1a1'], 2);
    if ($officeict1A1 == "0.00") {
        $officeict1A1 = "-";
    }

    $officeict1A1_total_num = $pg_row['officeict1a1_total'];
    $officeict1A1_total = number_format($pg_row['officeict1a1_total'], 2);
    if ($officeict1A1_total == "0.00") {
        $officeict1A1_total = "-";
    }

    $officeict1A1_balance_num = ($pg_row['officeict1a1_allot'] - $pg_row['officeict1a1_total']);
    $officeict1A1_balance = number_format(($pg_row['officeict1a1_allot'] - $pg_row['officeict1a1_total']), 2);
    if ($officeict1A1_balance == "0.00") {
        $officeict1A1_balance = "-";
    }
}
// =============================== officeict =============================== //




// =============================== fuel =============================== //
// fuel 1A1
$pg_query_fuel1a1 = "
    SELECT 
        allotment AS fuel1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fuel1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fuel1a1_total

    FROM allotment a 
    WHERE a.uacs = '50203090-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_fuel1a1 = pg_query($pg_connection, $pg_query_fuel1a1);
if (!$pg_result_fuel1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_fuel1a1)) {

    $fuel_allot1a1_num = $pg_row['fuel1a1_allot'];
    $fuel_allot1a1 = number_format($pg_row['fuel1a1_allot'], 2);
    if ($fuel_allot1a1 == "0.00") {
        $fuel_allot1a1 = "-";
    }

    $fuel1A1_num = $pg_row['fuel1a1'];
    $fuel1A1 = number_format($pg_row['fuel1a1'], 2);
    if ($fuel1A1 == "0.00") {
        $fuel1A1 = "-";
    }

    $fuel1A1_total_num = $pg_row['fuel1a1_total'];
    $fuel1A1_total = number_format($pg_row['fuel1a1_total'], 2);
    if ($fuel1A1_total == "0.00") {
        $fuel1A1_total = "-";
    }

    $fuel1A1_balance_num = ($pg_row['fuel1a1_allot'] - $pg_row['fuel1a1_total']);
    $fuel1A1_balance = number_format(($pg_row['fuel1a1_allot'] - $pg_row['fuel1a1_total']), 2);
    if ($fuel1A1_balance == "0.00") {
        $fuel1A1_balance = "-";
    }
}


// fuel 2a11
$pg_query_fuel2a11 = "
    SELECT 
        allotment AS fuel2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fuel2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fuel2a11_total

    FROM allotment a 
    WHERE a.uacs = '50203090-00'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_fuel2a11 = pg_query($pg_connection, $pg_query_fuel2a11);
if (!$pg_result_fuel2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_fuel2a11)) {

    $fuel_allot2a11_num = $pg_row['fuel2a11_allot'];
    $fuel_allot2a11 = number_format($pg_row['fuel2a11_allot'], 2);
    if ($fuel_allot2a11 == "0.00") {
        $fuel_allot2a11 = "-";
    }

    $fuel2a11_num = $pg_row['fuel2a11'];
    $fuel2a11 = number_format($pg_row['fuel2a11'], 2);
    if ($fuel2a11 == "0.00") {
        $fuel2a11 = "-";
    }

    $fuel2a11_total_num = $pg_row['fuel2a11_total'];
    $fuel2a11_total = number_format($pg_row['fuel2a11_total'], 2);
    if ($fuel2a11_total == "0.00") {
        $fuel2a11_total = "-";
    }

    $fuel2a11_balance_num = ($pg_row['fuel2a11_allot'] - $pg_row['fuel2a11_total']);
    $fuel2a11_balance = number_format(($pg_row['fuel2a11_allot'] - $pg_row['fuel2a11_total']), 2);
    if ($fuel2a11_balance == "0.00") {
        $fuel2a11_balance = "-";
    }
}
// =============================== fuel =============================== //




// =============================== othersupplies =============================== //
// othersupplies 1A1
$pg_query_othersupplies1a1 = "
    SELECT 
        allotment AS othersupplies1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersupplies1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersupplies1a1_total

    FROM allotment a 
    WHERE a.uacs = '50203990-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_othersupplies1a1 = pg_query($pg_connection, $pg_query_othersupplies1a1);
if (!$pg_result_othersupplies1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_othersupplies1a1)) {

    $othersupplies_allot1a1_num = $pg_row['othersupplies1a1_allot'];
    $othersupplies_allot1a1 = number_format($pg_row['othersupplies1a1_allot'], 2);
    if ($othersupplies_allot1a1 == "0.00") {
        $othersupplies_allot1a1 = "-";
    }

    $othersupplies1A1_num = $pg_row['othersupplies1a1'];
    $othersupplies1A1 = number_format($pg_row['othersupplies1a1'], 2);
    if ($othersupplies1A1 == "0.00") {
        $othersupplies1A1 = "-";
    }

    $othersupplies1A1_total_num = $pg_row['othersupplies1a1_total'];
    $othersupplies1A1_total = number_format($pg_row['othersupplies1a1_total'], 2);
    if ($othersupplies1A1_total == "0.00") {
        $othersupplies1A1_total = "-";
    }

    $othersupplies1A1_balance_num = ($pg_row['othersupplies1a1_allot'] - $pg_row['othersupplies1a1_total']);
    $othersupplies1A1_balance = number_format(($pg_row['othersupplies1a1_allot'] - $pg_row['othersupplies1a1_total']), 2);
    if ($othersupplies1A1_balance == "0.00") {
        $othersupplies1A1_balance = "-";
    }
}


// othersupplies 2a11
$pg_query_othersupplies2a11 = "
    SELECT 
        allotment AS othersupplies2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersupplies2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersupplies2a11_total

    FROM allotment a 
    WHERE a.uacs = '50203990-00'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_othersupplies2a11 = pg_query($pg_connection, $pg_query_othersupplies2a11);
if (!$pg_result_othersupplies2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_othersupplies2a11)) {

    $othersupplies_allot2a11_num = $pg_row['othersupplies2a11_allot'];
    $othersupplies_allot2a11 = number_format($pg_row['othersupplies2a11_allot'], 2);
    if ($othersupplies_allot2a11 == "0.00") {
        $othersupplies_allot2a11 = "-";
    }

    $othersupplies2a11_num = $pg_row['othersupplies2a11'];
    $othersupplies2a11 = number_format($pg_row['othersupplies2a11'], 2);
    if ($othersupplies2a11 == "0.00") {
        $othersupplies2a11 = "-";
    }

    $othersupplies2a11_total_num = $pg_row['othersupplies2a11_total'];
    $othersupplies2a11_total = number_format($pg_row['othersupplies2a11_total'], 2);
    if ($othersupplies2a11_total == "0.00") {
        $othersupplies2a11_total = "-";
    }

    $othersupplies2a11_balance_num = ($pg_row['othersupplies2a11_allot'] - $pg_row['othersupplies2a11_total']);
    $othersupplies2a11_balance = number_format(($pg_row['othersupplies2a11_allot'] - $pg_row['othersupplies2a11_total']), 2);
    if ($othersupplies2a11_balance == "0.00") {
        $othersupplies2a11_balance = "-";
    }
}
// =============================== othersupplies =============================== //




// =============================== water =============================== //
// water 1A1
$pg_query_water1a1 = "
    SELECT 
        allotment AS water1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS water1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS water1a1_total

    FROM allotment a 
    WHERE a.uacs = '50204010-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_water1a1 = pg_query($pg_connection, $pg_query_water1a1);
if (!$pg_result_water1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_water1a1)) {

    $water_allot1a1_num = $pg_row['water1a1_allot'];
    $water_allot1a1 = number_format($pg_row['water1a1_allot'], 2);
    if ($water_allot1a1 == "0.00") {
        $water_allot1a1 = "-";
    }

    $water1A1_num = $pg_row['water1a1'];
    $water1A1 = number_format($pg_row['water1a1'], 2);
    if ($water1A1 == "0.00") {
        $water1A1 = "-";
    }

    $water1A1_total_num = $pg_row['water1a1_total'];
    $water1A1_total = number_format($pg_row['water1a1_total'], 2);
    if ($water1A1_total == "0.00") {
        $water1A1_total = "-";
    }

    $water1A1_balance_num = ($pg_row['water1a1_allot'] - $pg_row['water1a1_total']);
    $water1A1_balance = number_format(($pg_row['water1a1_allot'] - $pg_row['water1a1_total']), 2);
    if ($water1A1_balance == "0.00") {
        $water1A1_balance = "-";
    }
}
// =============================== water =============================== //




// =============================== electricity =============================== //
// electricity 1A1
$pg_query_electricity1a1 = "
    SELECT 
        allotment AS electricity1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS electricity1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS electricity1a1_total

    FROM allotment a 
    WHERE a.uacs = '50204020-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_electricity1a1 = pg_query($pg_connection, $pg_query_electricity1a1);
if (!$pg_result_electricity1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_electricity1a1)) {

    $electricity_allot1a1_num = $pg_row['electricity1a1_allot'];
    $electricity_allot1a1 = number_format($pg_row['electricity1a1_allot'], 2);
    if ($electricity_allot1a1 == "0.00") {
        $electricity_allot1a1 = "-";
    }

    $electricity1A1_num = $pg_row['electricity1a1'];
    $electricity1A1 = number_format($pg_row['electricity1a1'], 2);
    if ($electricity1A1 == "0.00") {
        $electricity1A1 = "-";
    }

    $electricity1A1_total_num = $pg_row['electricity1a1_total'];
    $electricity1A1_total = number_format($pg_row['electricity1a1_total'], 2);
    if ($electricity1A1_total == "0.00") {
        $electricity1A1_total = "-";
    }

    $electricity1A1_balance_num = ($pg_row['electricity1a1_allot'] - $pg_row['electricity1a1_total']);
    $electricity1A1_balance = number_format(($pg_row['electricity1a1_allot'] - $pg_row['electricity1a1_total']), 2);
    if ($electricity1A1_balance == "0.00") {
        $electricity1A1_balance = "-";
    }
}


// electricity 2a11
$pg_query_electricity2a11 = "
    SELECT 
        allotment AS electricity2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS electricity2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS electricity2a11_total

    FROM allotment a 
    WHERE a.uacs = '50204020-00'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_electricity2a11 = pg_query($pg_connection, $pg_query_electricity2a11);
if (!$pg_result_electricity2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_electricity2a11)) {

    $electricity_allot2a11_num = $pg_row['electricity2a11_allot'];
    $electricity_allot2a11 = number_format($pg_row['electricity2a11_allot'], 2);
    if ($electricity_allot2a11 == "0.00") {
        $electricity_allot2a11 = "-";
    }

    $electricity2a11_num = $pg_row['electricity2a11'];
    $electricity2a11 = number_format($pg_row['electricity2a11'], 2);
    if ($electricity2a11 == "0.00") {
        $electricity2a11 = "-";
    }

    $electricity2a11_total_num = $pg_row['electricity2a11_total'];
    $electricity2a11_total = number_format($pg_row['electricity2a11_total'], 2);
    if ($electricity2a11_total == "0.00") {
        $electricity2a11_total = "-";
    }

    $electricity2a11_balance_num = ($pg_row['electricity2a11_allot'] - $pg_row['electricity2a11_total']);
    $electricity2a11_balance = number_format(($pg_row['electricity2a11_allot'] - $pg_row['electricity2a11_total']), 2);
    if ($electricity2a11_balance == "0.00") {
        $electricity2a11_balance = "-";
    }
}
// =============================== electricity =============================== //




// =============================== postage =============================== //
// postage 1A1
$pg_query_postage1a1 = "
    SELECT 
        allotment AS postage1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS postage1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS postage1a1_total

    FROM allotment a 
    WHERE a.uacs = '50205010-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_postage1a1 = pg_query($pg_connection, $pg_query_postage1a1);
if (!$pg_result_postage1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_postage1a1)) {

    $postage_allot1a1_num = $pg_row['postage1a1_allot'];
    $postage_allot1a1 = number_format($pg_row['postage1a1_allot'], 2);
    if ($postage_allot1a1 == "0.00") {
        $postage_allot1a1 = "-";
    }

    $postage1A1_num = $pg_row['postage1a1'];
    $postage1A1 = number_format($pg_row['postage1a1'], 2);
    if ($postage1A1 == "0.00") {
        $postage1A1 = "-";
    }

    $postage1A1_total_num = $pg_row['postage1a1_total'];
    $postage1A1_total = number_format($pg_row['postage1a1_total'], 2);
    if ($postage1A1_total == "0.00") {
        $postage1A1_total = "-";
    }

    $postage1A1_balance_num = ($pg_row['postage1a1_allot'] - $pg_row['postage1a1_total']);
    $postage1A1_balance = number_format(($pg_row['postage1a1_allot'] - $pg_row['postage1a1_total']), 2);
    if ($postage1A1_balance == "0.00") {
        $postage1A1_balance = "-";
    }
}


// postage 2a11
$pg_query_postage2a11 = "
    SELECT 
        allotment AS postage2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS postage2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS postage2a11_total

    FROM allotment a 
    WHERE a.uacs = '50205010-00'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_postage2a11 = pg_query($pg_connection, $pg_query_postage2a11);
if (!$pg_result_postage2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_postage2a11)) {

    $postage_allot2a11_num = $pg_row['postage2a11_allot'];
    $postage_allot2a11 = number_format($pg_row['postage2a11_allot'], 2);
    if ($postage_allot2a11 == "0.00") {
        $postage_allot2a11 = "-";
    }

    $postage2a11_num = $pg_row['postage2a11'];
    $postage2a11 = number_format($pg_row['postage2a11'], 2);
    if ($postage2a11 == "0.00") {
        $postage2a11 = "-";
    }

    $postage2a11_total_num = $pg_row['postage2a11_total'];
    $postage2a11_total = number_format($pg_row['postage2a11_total'], 2);
    if ($postage2a11_total == "0.00") {
        $postage2a11_total = "-";
    }

    $postage2a11_balance_num = ($pg_row['postage2a11_allot'] - $pg_row['postage2a11_total']);
    $postage2a11_balance = number_format(($pg_row['postage2a11_allot'] - $pg_row['postage2a11_total']), 2);
    if ($postage2a11_balance == "0.00") {
        $postage2a11_balance = "-";
    }
}
// =============================== postage =============================== //




// =============================== mobile =============================== //
// mobile 1A1
$pg_query_mobile1a1 = "
    SELECT 
        allotment AS mobile1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS mobile1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS mobile1a1_total

    FROM allotment a 
    WHERE a.uacs = '50205020-01'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_mobile1a1 = pg_query($pg_connection, $pg_query_mobile1a1);
if (!$pg_result_mobile1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_mobile1a1)) {

    $mobile_allot1a1_num = $pg_row['mobile1a1_allot'];
    $mobile_allot1a1 = number_format($pg_row['mobile1a1_allot'], 2);
    if ($mobile_allot1a1 == "0.00") {
        $mobile_allot1a1 = "-";
    }

    $mobile1A1_num = $pg_row['mobile1a1'];
    $mobile1A1 = number_format($pg_row['mobile1a1'], 2);
    if ($mobile1A1 == "0.00") {
        $mobile1A1 = "-";
    }

    $mobile1A1_total_num = $pg_row['mobile1a1_total'];
    $mobile1A1_total = number_format($pg_row['mobile1a1_total'], 2);
    if ($mobile1A1_total == "0.00") {
        $mobile1A1_total = "-";
    }

    $mobile1A1_balance_num = ($pg_row['mobile1a1_allot'] - $pg_row['mobile1a1_total']);
    $mobile1A1_balance = number_format(($pg_row['mobile1a1_allot'] - $pg_row['mobile1a1_total']), 2);
    if ($mobile1A1_balance == "0.00") {
        $mobile1A1_balance = "-";
    }
}


// mobile 2a11
$pg_query_mobile2a11 = "
    SELECT 
        allotment AS mobile2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS mobile2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS mobile2a11_total

    FROM allotment a 
    WHERE a.uacs = '50205020-01'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_mobile2a11 = pg_query($pg_connection, $pg_query_mobile2a11);
if (!$pg_result_mobile2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_mobile2a11)) {

    $mobile_allot2a11_num = $pg_row['mobile2a11_allot'];
    $mobile_allot2a11 = number_format($pg_row['mobile2a11_allot'], 2);
    if ($mobile_allot2a11 == "0.00") {
        $mobile_allot2a11 = "-";
    }

    $mobile2a11_num = $pg_row['mobile2a11'];
    $mobile2a11 = number_format($pg_row['mobile2a11'], 2);
    if ($mobile2a11 == "0.00") {
        $mobile2a11 = "-";
    }

    $mobile2a11_total_num = $pg_row['mobile2a11_total'];
    $mobile2a11_total = number_format($pg_row['mobile2a11_total'], 2);
    if ($mobile2a11_total == "0.00") {
        $mobile2a11_total = "-";
    }

    $mobile2a11_balance_num = ($pg_row['mobile2a11_allot'] - $pg_row['mobile2a11_total']);
    $mobile2a11_balance = number_format(($pg_row['mobile2a11_allot'] - $pg_row['mobile2a11_total']), 2);
    if ($mobile2a11_balance == "0.00") {
        $mobile2a11_balance = "-";
    }
}
// =============================== mobile =============================== //




// =============================== landline =============================== //
// landline 1A1
$pg_query_landline1a1 = "
    SELECT 
        allotment AS landline1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS landline1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS landline1a1_total

    FROM allotment a 
    WHERE a.uacs = '50205020-02'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_landline1a1 = pg_query($pg_connection, $pg_query_landline1a1);
if (!$pg_result_landline1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_landline1a1)) {

    $landline_allot1a1_num = $pg_row['landline1a1_allot'];
    $landline_allot1a1 = number_format($pg_row['landline1a1_allot'], 2);
    if ($landline_allot1a1 == "0.00") {
        $landline_allot1a1 = "-";
    }

    $landline1A1_num = $pg_row['landline1a1'];
    $landline1A1 = number_format($pg_row['landline1a1'], 2);
    if ($landline1A1 == "0.00") {
        $landline1A1 = "-";
    }

    $landline1A1_total_num = $pg_row['landline1a1_total'];
    $landline1A1_total = number_format($pg_row['landline1a1_total'], 2);
    if ($landline1A1_total == "0.00") {
        $landline1A1_total = "-";
    }

    $landline1A1_balance_num = ($pg_row['landline1a1_allot'] - $pg_row['landline1a1_total']);
    $landline1A1_balance = number_format(($pg_row['landline1a1_allot'] - $pg_row['landline1a1_total']), 2);
    if ($landline1A1_balance == "0.00") {
        $landline1A1_balance = "-";
    }
}


// landline 2a11
$pg_query_landline2a11 = "
    SELECT 
        allotment AS landline2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS landline2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS landline2a11_total

    FROM allotment a 
    WHERE a.uacs = '50205020-02'
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_landline2a11 = pg_query($pg_connection, $pg_query_landline2a11);
if (!$pg_result_landline2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_landline2a11)) {

    $landline_allot2a11_num = $pg_row['landline2a11_allot'];
    $landline_allot2a11 = number_format($pg_row['landline2a11_allot'], 2);
    if ($landline_allot2a11 == "0.00") {
        $landline_allot2a11 = "-";
    }

    $landline2a11_num = $pg_row['landline2a11'];
    $landline2a11 = number_format($pg_row['landline2a11'], 2);
    if ($landline2a11 == "0.00") {
        $landline2a11 = "-";
    }

    $landline2a11_total_num = $pg_row['landline2a11_total'];
    $landline2a11_total = number_format($pg_row['landline2a11_total'], 2);
    if ($landline2a11_total == "0.00") {
        $landline2a11_total = "-";
    }

    $landline2a11_balance_num = ($pg_row['landline2a11_allot'] - $pg_row['landline2a11_total']);
    $landline2a11_balance = number_format(($pg_row['landline2a11_allot'] - $pg_row['landline2a11_total']), 2);
    if ($landline2a11_balance == "0.00") {
        $landline2a11_balance = "-";
    }
}
// =============================== landline =============================== //




// =============================== internet =============================== //
// internet 1A1
$pg_query_internet1a1 = "
    SELECT 
        allotment AS internet1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS internet1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS internet1a1_total

    FROM allotment a 
    WHERE a.uacs = '50205030-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_internet1a1 = pg_query($pg_connection, $pg_query_internet1a1);
if (!$pg_result_internet1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_internet1a1)) {

    $internet_allot1a1_num = $pg_row['internet1a1_allot'];
    $internet_allot1a1 = number_format($pg_row['internet1a1_allot'], 2);
    if ($internet_allot1a1 == "0.00") {
        $internet_allot1a1 = "-";
    }

    $internet1A1_num = $pg_row['internet1a1'];
    $internet1A1 = number_format($pg_row['internet1a1'], 2);
    if ($internet1A1 == "0.00") {
        $internet1A1 = "-";
    }

    $internet1A1_total_num = $pg_row['internet1a1_total'];
    $internet1A1_total = number_format($pg_row['internet1a1_total'], 2);
    if ($internet1A1_total == "0.00") {
        $internet1A1_total = "-";
    }

    $internet1A1_balance_num = ($pg_row['internet1a1_allot'] - $pg_row['internet1a1_total']);
    $internet1A1_balance = number_format(($pg_row['internet1a1_allot'] - $pg_row['internet1a1_total']), 2);
    if ($internet1A1_balance == "0.00") {
        $internet1A1_balance = "-";
    }
}
// =============================== internet =============================== //




// =============================== building =============================== //
// building 1A1
$pg_query_building1a1 = "
    SELECT 
        allotment AS building1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS building1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS building1a1_total

    FROM allotment a 
    WHERE a.uacs = '50213040-01'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_building1a1 = pg_query($pg_connection, $pg_query_building1a1);
if (!$pg_result_building1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_building1a1)) {

    $building_allot1a1_num = $pg_row['building1a1_allot'];
    $building_allot1a1 = number_format($pg_row['building1a1_allot'], 2);
    if ($building_allot1a1 == "0.00") {
        $building_allot1a1 = "-";
    }

    $building1A1_num = $pg_row['building1a1'];
    $building1A1 = number_format($pg_row['building1a1'], 2);
    if ($building1A1 == "0.00") {
        $building1A1 = "-";
    }

    $building1A1_total_num = $pg_row['building1a1_total'];
    $building1A1_total = number_format($pg_row['building1a1_total'], 2);
    if ($building1A1_total == "0.00") {
        $building1A1_total = "-";
    }

    $building1A1_balance_num = ($pg_row['building1a1_allot'] - $pg_row['building1a1_total']);
    $building1A1_balance = number_format(($pg_row['building1a1_allot'] - $pg_row['building1a1_total']), 2);
    if ($building1A1_balance == "0.00") {
        $building1A1_balance = "-";
    }
}
// =============================== building =============================== //




// =============================== vehicle =============================== //
// vehicle 1A1
$pg_query_vehicle1a1 = "
    SELECT 
        allotment AS vehicle1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS vehicle1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS vehicle1a1_total

    FROM allotment a 
    WHERE a.uacs = '50213060-01'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_vehicle1a1 = pg_query($pg_connection, $pg_query_vehicle1a1);
if (!$pg_result_vehicle1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_vehicle1a1)) {

    $vehicle_allot1a1_num = $pg_row['vehicle1a1_allot'];
    $vehicle_allot1a1 = number_format($pg_row['vehicle1a1_allot'], 2);
    if ($vehicle_allot1a1 == "0.00") {
        $vehicle_allot1a1 = "-";
    }

    $vehicle1A1_num = $pg_row['vehicle1a1'];
    $vehicle1A1 = number_format($pg_row['vehicle1a1'], 2);
    if ($vehicle1A1 == "0.00") {
        $vehicle1A1 = "-";
    }

    $vehicle1A1_total_num = $pg_row['vehicle1a1_total'];
    $vehicle1A1_total = number_format($pg_row['vehicle1a1_total'], 2);
    if ($vehicle1A1_total == "0.00") {
        $vehicle1A1_total = "-";
    }

    $vehicle1A1_balance_num = ($pg_row['vehicle1a1_allot'] - $pg_row['vehicle1a1_total']);
    $vehicle1A1_balance = number_format(($pg_row['vehicle1a1_allot'] - $pg_row['vehicle1a1_total']), 2);
    if ($vehicle1A1_balance == "0.00") {
        $vehicle1A1_balance = "-";
    }
}
// =============================== vehicle =============================== //




// =============================== officeequip =============================== //
// officeequip 1A1
$pg_query_officeequip1a1 = "
    SELECT 
        allotment AS officeequip1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officeequip1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS officeequip1a1_total

    FROM allotment a 
    WHERE a.uacs = '50213050-02'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_officeequip1a1 = pg_query($pg_connection, $pg_query_officeequip1a1);
if (!$pg_result_officeequip1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_officeequip1a1)) {

    $officeequip_allot1a1_num = $pg_row['officeequip1a1_allot'];
    $officeequip_allot1a1 = number_format($pg_row['officeequip1a1_allot'], 2);
    if ($officeequip_allot1a1 == "0.00") {
        $officeequip_allot1a1 = "-";
    }

    $officeequip1A1_num = $pg_row['officeequip1a1'];
    $officeequip1A1 = number_format($pg_row['officeequip1a1'], 2);
    if ($officeequip1A1 == "0.00") {
        $officeequip1A1 = "-";
    }

    $officeequip1A1_total_num = $pg_row['officeequip1a1_total'];
    $officeequip1A1_total = number_format($pg_row['officeequip1a1_total'], 2);
    if ($officeequip1A1_total == "0.00") {
        $officeequip1A1_total = "-";
    }

    $officeequip1A1_balance_num = ($pg_row['officeequip1a1_allot'] - $pg_row['officeequip1a1_total']);
    $officeequip1A1_balance = number_format(($pg_row['officeequip1a1_allot'] - $pg_row['officeequip1a1_total']), 2);
    if ($officeequip1A1_balance == "0.00") {
        $officeequip1A1_balance = "-";
    }
}
// =============================== officeequip =============================== //




// =============================== extraordinary =============================== //
// extraordinary 1A1
$pg_query_extraordinary1a1 = "
    SELECT 
        allotment AS extraordinary1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS extraordinary1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS extraordinary1a1_total

    FROM allotment a 
    WHERE a.uacs = '50210030-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_extraordinary1a1 = pg_query($pg_connection, $pg_query_extraordinary1a1);
if (!$pg_result_extraordinary1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_extraordinary1a1)) {

    $extraordinary_allot1a1_num = $pg_row['extraordinary1a1_allot'];
    $extraordinary_allot1a1 = number_format($pg_row['extraordinary1a1_allot'], 2);
    if ($extraordinary_allot1a1 == "0.00") {
        $extraordinary_allot1a1 = "-";
    }

    $extraordinary1A1_num = $pg_row['extraordinary1a1'];
    $extraordinary1A1 = number_format($pg_row['extraordinary1a1'], 2);
    if ($extraordinary1A1 == "0.00") {
        $extraordinary1A1 = "-";
    }

    $extraordinary1A1_total_num = $pg_row['extraordinary1a1_total'];
    $extraordinary1A1_total = number_format($pg_row['extraordinary1a1_total'], 2);
    if ($extraordinary1A1_total == "0.00") {
        $extraordinary1A1_total = "-";
    }

    $extraordinary1A1_balance_num = ($pg_row['extraordinary1a1_allot'] - $pg_row['extraordinary1a1_total']);
    $extraordinary1A1_balance = number_format(($pg_row['extraordinary1a1_allot'] - $pg_row['extraordinary1a1_total']), 2);
    if ($extraordinary1A1_balance == "0.00") {
        $extraordinary1A1_balance = "-";
    }
}
// =============================== extraordinary =============================== //




// =============================== professional =============================== //
// professional 1A1
$pg_query_professional1a1 = "
    SELECT 
        allotment AS professional1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS professional1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS professional1a1_total

    FROM allotment a 
    WHERE a.uacs = '50211990-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_professional1a1 = pg_query($pg_connection, $pg_query_professional1a1);
if (!$pg_result_professional1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_professional1a1)) {

    $professional_allot1a1_num = $pg_row['professional1a1_allot'];
    $professional_allot1a1 = number_format($pg_row['professional1a1_allot'], 2);
    if ($professional_allot1a1 == "0.00") {
        $professional_allot1a1 = "-";
    }

    $professional1A1_num = $pg_row['professional1a1'];
    $professional1A1 = number_format($pg_row['professional1a1'], 2);
    if ($professional1A1 == "0.00") {
        $professional1A1 = "-";
    }

    $professional1A1_total_num = $pg_row['professional1a1_total'];
    $professional1A1_total = number_format($pg_row['professional1a1_total'], 2);
    if ($professional1A1_total == "0.00") {
        $professional1A1_total = "-";
    }

    $professional1A1_balance_num = ($pg_row['professional1a1_allot'] - $pg_row['professional1a1_total']);
    $professional1A1_balance = number_format(($pg_row['professional1a1_allot'] - $pg_row['professional1a1_total']), 2);
    if ($professional1A1_balance == "0.00") {
        $professional1A1_balance = "-";
    }
}
// =============================== professional =============================== //




// =============================== janitorial =============================== //
// janitorial 1A1
$pg_query_janitorial1a1 = "
    SELECT 
        allotment AS janitorial1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS janitorial1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS janitorial1a1_total

    FROM allotment a 
    WHERE a.uacs = '50212020-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_janitorial1a1 = pg_query($pg_connection, $pg_query_janitorial1a1);
if (!$pg_result_janitorial1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_janitorial1a1)) {

    $janitorial_allot1a1_num = $pg_row['janitorial1a1_allot'];
    $janitorial_allot1a1 = number_format($pg_row['janitorial1a1_allot'], 2);
    if ($janitorial_allot1a1 == "0.00") {
        $janitorial_allot1a1 = "-";
    }

    $janitorial1A1_num = $pg_row['janitorial1a1'];
    $janitorial1A1 = number_format($pg_row['janitorial1a1'], 2);
    if ($janitorial1A1 == "0.00") {
        $janitorial1A1 = "-";
    }

    $janitorial1A1_total_num = $pg_row['janitorial1a1_total'];
    $janitorial1A1_total = number_format($pg_row['janitorial1a1_total'], 2);
    if ($janitorial1A1_total == "0.00") {
        $janitorial1A1_total = "-";
    }

    $janitorial1A1_balance_num = ($pg_row['janitorial1a1_allot'] - $pg_row['janitorial1a1_total']);
    $janitorial1A1_balance = number_format(($pg_row['janitorial1a1_allot'] - $pg_row['janitorial1a1_total']), 2);
    if ($janitorial1A1_balance == "0.00") {
        $janitorial1A1_balance = "-";
    }
}
// =============================== janitorial =============================== //





// =============================== security =============================== //
// security 1A1
$pg_query_security1a1 = "
    SELECT 
        allotment AS security1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS security1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS security1a1_total

    FROM allotment a 
    WHERE a.uacs = '50212030-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_security1a1 = pg_query($pg_connection, $pg_query_security1a1);
if (!$pg_result_security1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_security1a1)) {

    $security_allot1a1_num = $pg_row['security1a1_allot'];
    $security_allot1a1 = number_format($pg_row['security1a1_allot'], 2);
    if ($security_allot1a1 == "0.00") {
        $security_allot1a1 = "-";
    }

    $security1A1_num = $pg_row['security1a1'];
    $security1A1 = number_format($pg_row['security1a1'], 2);
    if ($security1A1 == "0.00") {
        $security1A1 = "-";
    }

    $security1A1_total_num = $pg_row['security1a1_total'];
    $security1A1_total = number_format($pg_row['security1a1_total'], 2);
    if ($security1A1_total == "0.00") {
        $security1A1_total = "-";
    }

    $security1A1_balance_num = ($pg_row['security1a1_allot'] - $pg_row['security1a1_total']);
    $security1A1_balance = number_format(($pg_row['security1a1_allot'] - $pg_row['security1a1_total']), 2);
    if ($security1A1_balance == "0.00") {
        $security1A1_balance = "-";
    }
}
// =============================== security =============================== //





// =============================== general =============================== //
// general 1A1
$pg_query_general1a1 = "
    SELECT 
        allotment AS general1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS general1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS general1a1_total

    FROM allotment a 
    WHERE a.uacs = '50212990-99'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_general1a1 = pg_query($pg_connection, $pg_query_general1a1);
if (!$pg_result_general1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_general1a1)) {

    $general_allot1a1_num = $pg_row['general1a1_allot'];
    $general_allot1a1 = number_format($pg_row['general1a1_allot'], 2);
    if ($general_allot1a1 == "0.00") {
        $general_allot1a1 = "-";
    }

    $general1A1_num = $pg_row['general1a1'];
    $general1A1 = number_format($pg_row['general1a1'], 2);
    if ($general1A1 == "0.00") {
        $general1A1 = "-";
    }

    $general1A1_total_num = $pg_row['general1a1_total'];
    $general1A1_total = number_format($pg_row['general1a1_total'], 2);
    if ($general1A1_total == "0.00") {
        $general1A1_total = "-";
    }

    $general1A1_balance_num = ($pg_row['general1a1_allot'] - $pg_row['general1a1_total']);
    $general1A1_balance = number_format(($pg_row['general1a1_allot'] - $pg_row['general1a1_total']), 2);
    if ($general1A1_balance == "0.00") {
        $general1A1_balance = "-";
    }
}
// =============================== general =============================== //





// =============================== fidelity =============================== //
// fidelity 1A1
$pg_query_fidelity1a1 = "
    SELECT 
        allotment AS fidelity1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fidelity1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS fidelity1a1_total

    FROM allotment a 
    WHERE a.uacs = '50215020-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_fidelity1a1 = pg_query($pg_connection, $pg_query_fidelity1a1);
if (!$pg_result_fidelity1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_fidelity1a1)) {

    $fidelity_allot1a1_num = $pg_row['fidelity1a1_allot'];
    $fidelity_allot1a1 = number_format($pg_row['fidelity1a1_allot'], 2);
    if ($fidelity_allot1a1 == "0.00") {
        $fidelity_allot1a1 = "-";
    }

    $fidelity1A1_num = $pg_row['fidelity1a1'];
    $fidelity1A1 = number_format($pg_row['fidelity1a1'], 2);
    if ($fidelity1A1 == "0.00") {
        $fidelity1A1 = "-";
    }

    $fidelity1A1_total_num = $pg_row['fidelity1a1_total'];
    $fidelity1A1_total = number_format($pg_row['fidelity1a1_total'], 2);
    if ($fidelity1A1_total == "0.00") {
        $fidelity1A1_total = "-";
    }

    $fidelity1A1_balance_num = ($pg_row['fidelity1a1_allot'] - $pg_row['fidelity1a1_total']);
    $fidelity1A1_balance = number_format(($pg_row['fidelity1a1_allot'] - $pg_row['fidelity1a1_total']), 2);
    if ($fidelity1A1_balance == "0.00") {
        $fidelity1A1_balance = "-";
    }
}
// =============================== fidelity =============================== //





// =============================== insurance =============================== //
// insurance 1A1
$pg_query_insurance1a1 = "
    SELECT 
        allotment AS insurance1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS insurance1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS insurance1a1_total

    FROM allotment a 
    WHERE a.uacs = '50215030-00'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_insurance1a1 = pg_query($pg_connection, $pg_query_insurance1a1);
if (!$pg_result_insurance1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_insurance1a1)) {

    $insurance_allot1a1_num = $pg_row['insurance1a1_allot'];
    $insurance_allot1a1 = number_format($pg_row['insurance1a1_allot'], 2);
    if ($insurance_allot1a1 == "0.00") {
        $insurance_allot1a1 = "-";
    }

    $insurance1A1_num = $pg_row['insurance1a1'];
    $insurance1A1 = number_format($pg_row['insurance1a1'], 2);
    if ($insurance1A1 == "0.00") {
        $insurance1A1 = "-";
    }

    $insurance1A1_total_num = $pg_row['insurance1a1_total'];
    $insurance1A1_total = number_format($pg_row['insurance1a1_total'], 2);
    if ($insurance1A1_total == "0.00") {
        $insurance1A1_total = "-";
    }

    $insurance1A1_balance_num = ($pg_row['insurance1a1_allot'] - $pg_row['insurance1a1_total']);
    $insurance1A1_balance = number_format(($pg_row['insurance1a1_allot'] - $pg_row['insurance1a1_total']), 2);
    if ($insurance1A1_balance == "0.00") {
        $insurance1A1_balance = "-";
    }
}
// =============================== insurance =============================== //





// =============================== ictsoftware =============================== //
// ictsoftware 1A1
$pg_query_ictsoftware1a1 = "
    SELECT 
        allotment AS ictsoftware1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ictsoftware1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS ictsoftware1a1_total

    FROM allotment a 
    WHERE a.uacs = '50299070-01'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_ictsoftware1a1 = pg_query($pg_connection, $pg_query_ictsoftware1a1);
if (!$pg_result_ictsoftware1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_ictsoftware1a1)) {

    $ictsoftware_allot1a1_num = $pg_row['ictsoftware1a1_allot'];
    $ictsoftware_allot1a1 = number_format($pg_row['ictsoftware1a1_allot'], 2);
    if ($ictsoftware_allot1a1 == "0.00") {
        $ictsoftware_allot1a1 = "-";
    }

    $ictsoftware1A1_num = $pg_row['ictsoftware1a1'];
    $ictsoftware1A1 = number_format($pg_row['ictsoftware1a1'], 2);
    if ($ictsoftware1A1 == "0.00") {
        $ictsoftware1A1 = "-";
    }

    $ictsoftware1A1_total_num = $pg_row['ictsoftware1a1_total'];
    $ictsoftware1A1_total = number_format($pg_row['ictsoftware1a1_total'], 2);
    if ($ictsoftware1A1_total == "0.00") {
        $ictsoftware1A1_total = "-";
    }

    $ictsoftware1A1_balance_num = ($pg_row['ictsoftware1a1_allot'] - $pg_row['ictsoftware1a1_total']);
    $ictsoftware1A1_balance = number_format(($pg_row['ictsoftware1a1_allot'] - $pg_row['ictsoftware1a1_total']), 2);
    if ($ictsoftware1A1_balance == "0.00") {
        $ictsoftware1A1_balance = "-";
    }
}
// =============================== ictsoftware =============================== //





// =============================== othersubscription =============================== //
// othersubscription 1A1
$pg_query_othersubscription1a1 = "
    SELECT 
        allotment AS othersubscription1a1_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersubscription1a1,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = a.allotgroup
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS othersubscription1a1_total

    FROM allotment a 
    WHERE a.uacs = '50299070-99'
    AND a.allotgroup = '1A1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_othersubscription1a1 = pg_query($pg_connection, $pg_query_othersubscription1a1);
if (!$pg_result_othersubscription1a1) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_othersubscription1a1)) {

    $othersubscription_allot1a1_num = $pg_row['othersubscription1a1_allot'];
    $othersubscription_allot1a1 = number_format($pg_row['othersubscription1a1_allot'], 2);
    if ($othersubscription_allot1a1 == "0.00") {
        $othersubscription_allot1a1 = "-";
    }

    $othersubscription1A1_num = $pg_row['othersubscription1a1'];
    $othersubscription1A1 = number_format($pg_row['othersubscription1a1'], 2);
    if ($othersubscription1A1 == "0.00") {
        $othersubscription1A1 = "-";
    }

    $othersubscription1A1_total_num = $pg_row['othersubscription1a1_total'];
    $othersubscription1A1_total = number_format($pg_row['othersubscription1a1_total'], 2);
    if ($othersubscription1A1_total == "0.00") {
        $othersubscription1A1_total = "-";
    }

    $othersubscription1A1_balance_num = ($pg_row['othersubscription1a1_allot'] - $pg_row['othersubscription1a1_total']);
    $othersubscription1A1_balance = number_format(($pg_row['othersubscription1a1_allot'] - $pg_row['othersubscription1a1_total']), 2);
    if ($othersubscription1A1_balance == "0.00") {
        $othersubscription1A1_balance = "-";
    }
}
// =============================== othersubscription =============================== //






// =============================== erdt =============================== //
// erdt 2a11
$pg_query_erdt2a11 = "
    SELECT 
        allotment AS erdt2a11_allot,
        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-103 ERDT'
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS erdt2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-103 ERDT'
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS erdt2a11_total

    FROM allotment a 
    WHERE a.uacs = '50202020-00'
    AND a.objclass = 'ERDT' 
    AND a.allotgroup = '2A1-1' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_erdt2a11 = pg_query($pg_connection, $pg_query_erdt2a11);
if (!$pg_result_erdt2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_erdt2a11)) {

    $erdt_allot2a11_num = $pg_row['erdt2a11_allot'];
    $erdt_allot2a11 = number_format($pg_row['erdt2a11_allot'], 2);
    if ($erdt_allot2a11 == "0.00") {
        $erdt_allot2a11 = "-";
    }

    $erdt2a11_num = $pg_row['erdt2a11'];
    $erdt2a11 = number_format($pg_row['erdt2a11'], 2);
    if ($erdt2a11 == "0.00") {
        $erdt2a11 = "-";
    }

    $erdt2a11_total_num = $pg_row['erdt2a11_total'];
    $erdt2a11_total = number_format($pg_row['erdt2a11_total'], 2);
    if ($erdt2a11_total == "0.00") {
        $erdt2a11_total = "-";
    }

    $erdt2a11_balance_num = ($pg_row['erdt2a11_allot'] - $pg_row['erdt2a11_total']);
    $erdt2a11_balance = number_format(($pg_row['erdt2a11_allot'] - $pg_row['erdt2a11_total']), 2);
    if ($erdt2a11_balance == "0.00") {
        $erdt2a11_balance = "-";
    }
}
// =============================== erdt =============================== //





// =============================== asthrdp =============================== //
// asthrdp 2a11
$pg_query_asthrdp2a11 = "
    SELECT 
        allotment AS asthrdp2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-104 ASTHRDP'
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS asthrdp2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-104 ASTHRDP'
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS asthrdp2a11_total

    FROM allotment a 
    WHERE a.uacs = '50202020-00'
    AND a.allotgroup = '2A1-1' 
    AND a.objclass = 'ASTHRDP' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_asthrdp2a11 = pg_query($pg_connection, $pg_query_asthrdp2a11);
if (!$pg_result_asthrdp2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_asthrdp2a11)) {

    $asthrdp_allot2a11_num = $pg_row['asthrdp2a11_allot'];
    $asthrdp_allot2a11 = number_format($pg_row['asthrdp2a11_allot'], 2);
    if ($asthrdp_allot2a11 == "0.00") {
        $asthrdp_allot2a11 = "-";
    }

    $asthrdp2a11_num = $pg_row['asthrdp2a11'];
    $asthrdp2a11 = number_format($pg_row['asthrdp2a11'], 2);
    if ($asthrdp2a11 == "0.00") {
        $asthrdp2a11 = "-";
    }

    $asthrdp2a11_total_num = $pg_row['asthrdp2a11_total'];
    $asthrdp2a11_total = number_format($pg_row['asthrdp2a11_total'], 2);
    if ($asthrdp2a11_total == "0.00") {
        $asthrdp2a11_total = "-";
    }

    $asthrdp2a11_balance_num = ($pg_row['asthrdp2a11_allot'] - $pg_row['asthrdp2a11_total']);
    $asthrdp2a11_balance = number_format(($pg_row['asthrdp2a11_allot'] - $pg_row['asthrdp2a11_total']), 2);
    if ($asthrdp2a11_balance == "0.00") {
        $asthrdp2a11_balance = "-";
    }
}
// =============================== asthrdp =============================== //





// =============================== cbpsme =============================== //
// cbpsme 2a11
$pg_query_cbpsme2a11 = "
    SELECT 
        allotment AS cbpsme2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-105 CBPSME'
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cbpsme2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-105 CBPSME'
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS cbpsme2a11_total

    FROM allotment a 
    WHERE a.uacs = '50202020-00'
    AND a.allotgroup = '2A1-1' 
    AND a.objclass = 'CBPSME' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_cbpsme2a11 = pg_query($pg_connection, $pg_query_cbpsme2a11);
if (!$pg_result_cbpsme2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_cbpsme2a11)) {

    $cbpsme_allot2a11_num = $pg_row['cbpsme2a11_allot'];
    $cbpsme_allot2a11 = number_format($pg_row['cbpsme2a11_allot'], 2);
    if ($cbpsme_allot2a11 == "0.00") {
        $cbpsme_allot2a11 = "-";
    }

    $cbpsme2a11_num = $pg_row['cbpsme2a11'];
    $cbpsme2a11 = number_format($pg_row['cbpsme2a11'], 2);
    if ($cbpsme2a11 == "0.00") {
        $cbpsme2a11 = "-";
    }

    $cbpsme2a11_total_num = $pg_row['cbpsme2a11_total'];
    $cbpsme2a11_total = number_format($pg_row['cbpsme2a11_total'], 2);
    if ($cbpsme2a11_total == "0.00") {
        $cbpsme2a11_total = "-";
    }

    $cbpsme2a11_balance_num = ($pg_row['cbpsme2a11_allot'] - $pg_row['cbpsme2a11_total']);
    $cbpsme2a11_balance = number_format(($pg_row['cbpsme2a11_allot'] - $pg_row['cbpsme2a11_total']), 2);
    if ($cbpsme2a11_balance == "0.00") {
        $cbpsme2a11_balance = "-";
    }
}
// =============================== cbpsme =============================== //





// =============================== hrdp =============================== //
// hrdp 2a11
$pg_query_hrdp2a11 = "
    SELECT 
        allotment AS hrdp2a11_allot,

        (
            SELECT SUM(amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-106 HRDP'
            AND o.ors_number LIKE '{$saobmonth}-%'
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hrdp2a11,

        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.iscontinuing = 0 
            AND o.isactive = 1 
            AND o.uacs = a.uacs 
            AND o.mfopap = '2A1-106 HRDP'
            AND ({$ors_number_sql})
            AND o.ors_random LIKE 'DOC-{$saobyear}-%'
        ) AS hrdp2a11_total

    FROM allotment a 
    WHERE a.uacs = '50202020-00'
    AND a.allotgroup = '2A1-1' 
    AND a.objclass = 'HRDP' 
    AND a.allotyear = '{$saobyear}'
";

$pg_result_hrdp2a11 = pg_query($pg_connection, $pg_query_hrdp2a11);
if (!$pg_result_hrdp2a11) {
    die("Error executing the query: " . pg_last_error($pg_connection));
}

while ($pg_row = pg_fetch_assoc($pg_result_hrdp2a11)) {

    $hrdp_allot2a11_num = $pg_row['hrdp2a11_allot'];
    $hrdp_allot2a11 = number_format($pg_row['hrdp2a11_allot'], 2);
    if ($hrdp_allot2a11 == "0.00") {
        $hrdp_allot2a11 = "-";
    }

    $hrdp2a11_num = $pg_row['hrdp2a11'];
    $hrdp2a11 = number_format($pg_row['hrdp2a11'], 2);
    if ($hrdp2a11 == "0.00") {
        $hrdp2a11 = "-";
    }

    $hrdp2a11_total_num = $pg_row['hrdp2a11_total'];
    $hrdp2a11_total = number_format($pg_row['hrdp2a11_total'], 2);
    if ($hrdp2a11_total == "0.00") {
        $hrdp2a11_total = "-";
    }

    $hrdp2a11_balance_num = ($pg_row['hrdp2a11_allot'] - $pg_row['hrdp2a11_total']);
    $hrdp2a11_balance = number_format(($pg_row['hrdp2a11_allot'] - $pg_row['hrdp2a11_total']), 2);
    if ($hrdp2a11_balance == "0.00") {
        $hrdp2a11_balance = "-";
    }
}
// =============================== hrdp =============================== //





//    





// =============================== total other compensation =============================== //

    $totalothercomp1A1_allot = number_format(($pera_allot1a1_num + $rarara_allot1a1_num + $tatata_allot1a1_num + $clothing_allot1a1_num + $productivity_allot1a1_num + $yearend_allot1a1_num + $cashgift_allot1a1_num + $midyear_allot1a1_num + $pagibig_allot1a1_num + $philhealth_allot1a1_num + $ecip_allot1a1_num), 2);

    $totalothercomp1A1 = number_format(($pera1A1_num + $rarara1A1_num + $tatata1A1_num + $clothing1A1_num + $productivity1A1_num + $yearend1A1_num + $cashgift1A1_num + $midyear1A1_num + $pagibig1A1_num + $philhealth1A1_num + $ecip1A1_num), 2);

    $totalothercomp1A1_total = number_format(($pera1A1_total_num + $rarara1A1_total_num + $tatata1A1_total_num + $clothing1A1_total_num + $productivity1A1_total_num + $yearend1A1_total_num + $cashgift1A1_total_num + $midyear1A1_total_num + $pagibig1A1_total_num + $philhealth1A1_total_num + $ecip1A1_total_num), 2);

    $totalothercomp1A1_balance = number_format(($pera1A1_balance_num + $rarara1A1_balance_num + $tatata1A1_balance_num + $clothing1A1_balance_num + $productivity1A1_balance_num + $yearend1A1_balance_num + $cashgift1A1_balance_num + $midyear1A1_balance_num + $pagibig1A1_balance_num + $philhealth1A1_balance_num + $ecip1A1_balance_num), 2);





    $totalothercomp2a11_allot = number_format(($pera_allot2a11_num + $clothing_allot2a11_num + $productivity_allot2a11_num + $yearend_allot2a11_num + $cashgift_allot2a11_num + $midyear_allot2a11_num + $pagibig_allot2a11_num + $philhealth_allot2a11_num + $ecip_allot2a11_num), 2);
    
    $totalothercomp2a11 = number_format(($pera2a11_num + $clothing2a11_num + $productivity2a11_num + $yearend2a11_num + $cashgift2a11_num + $midyear2a11_num + $pagibig2a11_num + $philhealth2a11_num + $ecip2a11_num), 2);

    $totalothercomp2a11_total = number_format(($pera2a11_total_num + $clothing2a11_total_num + $productivity2a11_total_num + $yearend2a11_total_num + $cashgift2a11_total_num + $midyear2a11_total_num + $pagibig2a11_total_num + $philhealth2a11_total_num + $ecip2a11_total_num), 2);

    $totalothercomp2a11_balance = number_format(($pera2a11_balance_num + $clothing2a11_balance_num + $productivity2a11_balance_num + $yearend2a11_balance_num + $cashgift2a11_balance_num + $midyear2a11_balance_num + $pagibig2a11_balance_num + $philhealth2a11_balance_num + $ecip2a11_balance_num), 2);





    $totalothercomp2a12_allot = number_format(($pera_allot2a12_num + $rarara_allot2a12_num + $tatata_allot2a12_num + $clothing_allot2a12_num + $productivity_allot2a12_num + $yearend_allot2a12_num + $cashgift_allot2a12_num + $midyear_allot2a12_num + $pagibig_allot2a12_num + $philhealth_allot2a12_num + $ecip_allot2a12_num), 2);
    
    $totalothercomp2a12 = number_format(($pera2a12_num + $rarara2a12_num + $tatata2a12_num + $clothing2a12_num + $productivity2a12_num + $yearend2a12_num + $cashgift2a12_num + $midyear2a12_num + $pagibig2a12_num + $philhealth2a12_num + $ecip2a12_num), 2);

    $totalothercomp2a12_total = number_format(($pera2a12_total_num + $rarara2a12_total_num + $tatata2a12_total_num + $clothing2a12_total_num + $productivity2a12_total_num + $yearend2a12_total_num + $cashgift2a12_total_num + $midyear2a12_total_num + $pagibig2a12_total_num + $philhealth2a12_total_num + $ecip2a12_total_num), 2);

    $totalothercomp2a12_balance = number_format(($pera2a12_balance_num + $rarara2a12_balance_num + $tatata2a12_balance_num + $clothing2a12_balance_num + $productivity2a12_balance_num + $yearend2a12_balance_num + $cashgift2a12_balance_num + $midyear2a12_balance_num + $pagibig2a12_balance_num + $philhealth2a12_balance_num + $ecip2a12_balance_num), 2);

// =============================== total other compensation =============================== //





// =============================== magna carta benefits =============================== //

    $magnacarta1A1_allot = number_format(($subsistence_allot1a1_num + $laundry_allot1a1_num + $hazard_allot1a1_num + $longetivity_allot1a1_num), 2);
    $magnacarta2a11_allot = number_format(($subsistence_allot2a11_num + $laundry_allot2a11_num + $hazard_allot2a11_num + $longetivity_allot2a11_num), 2);
    $magnacarta2a12_allot = number_format(($subsistence_allot2a12_num + $laundry_allot2a12_num + $hazard_allot2a12_num + $longetivity_allot2a12_num), 2);


    $magnacarta1A1 = number_format(($subsistence1A1_num + $laundry1A1_num + $hazard1A1_num + $longetivity1A1_num), 2);
    $magnacarta2a11 = number_format(($subsistence2a11_num + $laundry2a11_num + $hazard2a11_num + $longetivity2a11_num), 2);
    $magnacarta2a12 = number_format(($subsistence2a12_num + $laundry2a12_num + $hazard2a12_num + $longetivity2a12_num), 2);


    $magnacarta1A1_total = number_format(($subsistence1A1_total_num + $laundry1A1_total_num + $hazard1A1_total_num + $longetivity1A1_total_num), 2);
    $magnacarta2a11_total = number_format(($subsistence2a11_total_num + $laundry2a11_total_num + $hazard2a11_total_num + $longetivity2a11_total_num), 2);
    $magnacarta2a12_total = number_format(($subsistence2a12_total_num + $laundry2a12_total_num + $hazard2a12_total_num + $longetivity2a12_total_num), 2);


    $magnacarta1A1_balance = number_format(($subsistence1A1_balance_num + $laundry1A1_balance_num + $hazard1A1_balance_num + $longetivity1A1_balance_num), 2);
    $magnacarta2a11_balance = number_format(($subsistence2a11_balance_num + $laundry2a11_balance_num + $hazard2a11_balance_num + $longetivity2a11_balance_num), 2);
    $magnacarta2a12_balance = number_format(($subsistence2a12_balance_num + $laundry2a12_balance_num + $hazard2a12_balance_num + $longetivity2a12_balance_num), 2);


// =============================== magna carta benefits =============================== //





// =============================== total ps =============================== //

    $totalps_1A1_allot = number_format(($salary_allot1a1_num + $pera_allot1a1_num + $rarara_allot1a1_num + $tatata_allot1a1_num + $clothing_allot1a1_num + $productivity_allot1a1_num + $yearend_allot1a1_num + $cashgift_allot1a1_num + $midyear_allot1a1_num + $pagibig_allot1a1_num + $philhealth_allot1a1_num + $ecip_allot1a1_num + $subsistence_allot1a1_num + $laundry_allot1a1_num + $hazard_allot1a1_num + $longetivity_allot1a1_num), 2);

    $totalps_1A1 = number_format(($salary1A1_num + $pera1A1_num + $rarara1A1_num + $tatata1A1_num + $clothing1A1_num + $productivity1A1_num + $yearend1A1_num + $cashgift1A1_num + $midyear1A1_num + $pagibig1A1_num + $philhealth1A1_num + $ecip1A1_num + $subsistence1A1_num + $laundry1A1_num + $hazard1A1_num + $longetivity1A1_num), 2);

    $totalps_1A1_total = number_format(($salary1A1_total_num + $pera1A1_total_num + $rarara1A1_total_num + $tatata1A1_total_num + $clothing1A1_total_num + $productivity1A1_total_num + $yearend1A1_total_num + $cashgift1A1_total_num + $midyear1A1_total_num + $pagibig1A1_total_num + $philhealth1A1_total_num + $ecip1A1_total_num + $subsistence1A1_total_num + $laundry1A1_total_num + $hazard1A1_total_num + $longetivity1A1_total_num), 2);

    $totalps_1A1_balance = number_format(($salary1A1_balance_num + $pera1A1_balance_num + $rarara1A1_balance_num + $tatata1A1_balance_num + $clothing1A1_balance_num + $productivity1A1_balance_num + $yearend1A1_balance_num + $cashgift1A1_balance_num + $midyear1A1_balance_num + $pagibig1A1_balance_num + $philhealth1A1_balance_num + $ecip1A1_balance_num + $subsistence1A1_balance_num + $laundry1A1_balance_num + $hazard1A1_balance_num + $longetivity1A1_balance_num), 2);






    $totalps_2a11_allot = number_format(($salary_allot2a11_num + $pera_allot2a11_num + $clothing_allot2a11_num + $productivity_allot2a11_num + $yearend_allot2a11_num + $cashgift_allot2a11_num + $midyear_allot2a11_num + $pagibig_allot2a11_num + $philhealth_allot2a11_num + $ecip_allot2a11_num + $subsistence_allot2a11_num + $laundry_allot2a11_num + $hazard_allot2a11_num + $longetivity_allot2a11_num), 2);

    $totalps_2a11 = number_format(($salary2a11_num + $pera2a11_num + $clothing2a11_num + $productivity2a11_num + $yearend2a11_num + $cashgift2a11_num + $midyear2a11_num + $pagibig2a11_num + $philhealth2a11_num + $ecip2a11_num + $subsistence2a11_num + $laundry2a11_num + $hazard2a11_num + $longetivity2a11_num), 2);

    $totalps_2a11_total = number_format(($salary2a11_total_num + $pera2a11_total_num + $clothing2a11_total_num + $productivity2a11_total_num + $yearend2a11_total_num + $cashgift2a11_total_num + $midyear2a11_total_num + $pagibig2a11_total_num + $philhealth2a11_total_num + $ecip2a11_total_num + $subsistence2a11_total_num + $laundry2a11_total_num + $hazard2a11_total_num + $longetivity2a11_total_num), 2);

    $totalps_2a11_balance = number_format(($salary2a11_balance_num + $pera2a11_balance_num + $clothing2a11_balance_num + $productivity2a11_balance_num + $yearend2a11_balance_num + $cashgift2a11_balance_num + $midyear2a11_balance_num + $pagibig2a11_balance_num + $philhealth2a11_balance_num + $ecip2a11_balance_num + $subsistence2a11_balance_num + $laundry2a11_balance_num + $hazard2a11_balance_num + $longetivity2a11_balance_num), 2);






    $totalps_2a12_allot = number_format(($salary_allot2a12_num + $pera_allot2a12_num + $rarara_allot2a12_num + $tatata_allot2a12_num + $clothing_allot2a12_num + $productivity_allot2a12_num + $yearend_allot2a12_num + $cashgift_allot2a12_num + $midyear_allot2a12_num + $pagibig_allot2a12_num + $philhealth_allot2a12_num + $ecip_allot2a12_num + $subsistence_allot2a12_num + $laundry_allot2a12_num + $hazard_allot2a12_num + $longetivity_allot2a12_num), 2);

    $totalps_2a12 = number_format(($salary2a12_num + $pera2a12_num + $rarara2a12_num + $tatata2a12_num + $clothing2a12_num + $productivity2a12_num + $yearend2a12_num + $cashgift2a12_num + $midyear2a12_num + $pagibig2a12_num + $philhealth2a12_num + $ecip2a12_num + $subsistence2a12_num + $laundry2a12_num + $hazard2a12_num + $longetivity2a12_num), 2);

    $totalps_2a12_total = number_format(($salary2a12_total_num + $pera2a12_total_num + $rarara2a12_total_num + $tatata2a12_total_num + $clothing2a12_total_num + $productivity2a12_total_num + $yearend2a12_total_num + $cashgift2a12_total_num + $midyear2a12_total_num + $pagibig2a12_total_num + $philhealth2a12_total_num + $ecip2a12_total_num + $subsistence2a12_total_num + $laundry2a12_total_num + $hazard2a12_total_num + $longetivity2a12_total_num), 2);

    $totalps_2a12_balance = number_format(($salary2a12_balance_num + $pera2a12_balance_num + $rarara2a12_balance_num + $tatata2a12_balance_num + $clothing2a12_balance_num + $productivity2a12_balance_num + $yearend2a12_balance_num + $cashgift2a12_balance_num + $midyear2a12_balance_num + $pagibig2a12_balance_num + $philhealth2a12_balance_num + $ecip2a12_balance_num + $subsistence2a12_balance_num + $laundry2a12_balance_num + $hazard2a12_balance_num + $longetivity2a12_balance_num), 2);

// =============================== total ps =============================== //





// =============================== total mooe =============================== //

    $totalmooe_1A1_allot = number_format(($localtravel_allot1a1_num + $foreigntravel_allot1a1_num + $icttraining_allot1a1_num + $officesupplies_allot1a1_num + $officeict_allot1a1_num + $fuel_allot1a1_num + $othersupplies_allot1a1_num + $water_allot1a1_num + $electricity_allot1a1_num + $postage_allot1a1_num + $mobile_allot1a1_num + $landline_allot1a1_num + $internet_allot1a1_num + $building_allot1a1_num + $vehicle_allot1a1_num + $officeequip_allot1a1_num + $extraordinary_allot1a1_num + $professional_allot1a1_num + $janitorial_allot1a1_num + $security_allot1a1_num + $general_allot1a1_num + $fidelity_allot1a1 + $insurance_allot1a1_num + $ictsoftware_allot1a1_num + $othersubscription_allot1a1_num), 2);

    $totalmooe1A1 = number_format(($localtravel1A1_num + $foreigntravel1A1_num + $icttraining1A1_num + $officesupplies1A1_num + $officeict1A1_num + $fuel1A1_num + $othersupplies1A1_num + $water1A1_num + $electricity1A1_num + $postage1A1_num + $mobile1A1_num + $landline1A1_num + $internet1A1_num + $building1A1_num + $vehicle1A1_num + $officeequip1A1_num + $extraordinary1A1_num + $professional1A1_num + $janitorial1A1_num + $security1A1_num + $general1A1_num + $fidelity1A1_num + $insurance1A1_num + $ictsoftware1A1_num + $othersubscription1A1_num), 2);

    $totalmooe1A1_total = number_format(($localtravel1A1_total_num + $foreigntravel1A1_total_num + $icttraining1A1_total_num + $officesupplies1A1_total_num + $officeict1A1_total_num + $fuel1A1_total_num + $othersupplies1A1_total_num + $water1A1_total_num + $electricity1A1_total_num + $postage1A1_total_num + $mobile1A1_total_num + $landline1A1_total_num + $internet1A1_total_num + $building1A1_total_num + $vehicle1A1_total_num + $officeequip1A1_total_num + $extraordinary1A1_total_num + $professional1A1_total_num + $janitorial1A1_total_num + $security1A1_total_num + $general1A1_total_num + $fidelity1A1_total_num + $insurance1A1_total_num + $ictsoftware1A1_total_num + $othersubscription1A1_total_num), 2);

    $totalmooe1A1_balance = number_format(($localtravel1A1_balance_num + $foreigntravel1A1_balance_num + $icttraining1A1_balance_num + $officesupplies1A1_balance_num + $officeict1A1_balance_num + $fuel1A1_balance_num + $othersupplies1A1_balance_num + $water1A1_balance_num + $electricity1A1_balance_num + $postage1A1_balance_num + $mobile1A1_balance_num + $landline1A1_balance_num + $internet1A1_balance_num + $building1A1_balance_num + $vehicle1A1_balance_num + $officeequip1A1_balance_num + $extraordinary1A1_balance_num + $professional1A1_balance_num + $janitorial1A1_balance_num + $security1A1_balance_num + $general1A1_balance_num + $fidelity1A1_balance_num + $insurance1A1_balance_num + $ictsoftware1A1_balance_num + $othersubscription1A1_balance_num), 2);







    $totalmooe_2a11_allot = number_format(($localtravel_allot2a11_num + $foreigntravel_allot2a11_num + $officesupplies_allot2a11_num + $fuel_allot2a11_num + $othersupplies_allot2a11_num + $electricity_allot2a11_num + $postage_allot2a11_num + $mobile_allot2a11_num + $landline_allot2a11_num + $internet_allot2a11_num + $erdt_allot2a11_num + $asthrdp_allot2a11_num + $cbpsme_allot2a11_num + $hrdp_allot2a11_num), 2);

    $totalmooe2a11 = number_format(($localtravel2a11_num + $foreigntravel2a11_num + $erdt2a11_num + $asthrdp2a11_num + $cbpsme2a11_num + $hrdp2a11_num + $officesupplies2a11_num + $fuel2a11_num + $othersupplies2a11_num + $electricity2a11_num + $postage2a11_num + $mobile2a11_num + $landline2a11_num),2);

    $totalmooe2a11_total = number_format(($localtravel2a11_total_num + $foreigntravel2a11_total_num + $erdt2a11_total_num + $asthrdp2a11_total_num + $cbpsme2a11_total_num + $hrdp2a11_total_num + $officesupplies2a11_total_num + $fuel2a11_total_num + $othersupplies2a11_total_num + $electricity2a11_total_num + $postage2a11_total_num + $mobile2a11_total_num + $landline2a11_total_num),2);



    $totalmooe2a11_balance = number_format(($localtravel2a11_balance_num + $foreigntravel2a11_balance_num + $erdt2a11_balance_num + $asthrdp2a11_balance_num + $cbpsme2a11_balance_num + $hrdp2a11_balance_num + $officesupplies2a11_balance_num + $fuel2a11_balance_num + $othersupplies2a11_balance_num + $electricity2a11_balance_num + $postage2a11_balance_num + $mobile2a11_balance_num + $landline2a11_balance_num),2);

// =============================== total mooe =============================== //





// =============================== total scholarship =============================== //

    $totalscholarship_2a11_allot = number_format(($erdt_allot2a11_num + $asthrdp_allot2a11_num + $cbpsme_allot2a11_num + $hrdp_allot2a11_num), 2);
    $totalscholarship2a11 = number_format(($erdt2a11_num + $asthrdp2a11_num + $cbpsme2a11_num + $hrdp2a11_num), 2);
    $totalscholarship2a11_total = number_format(($erdt2a11_total_num + $asthrdp2a11_total_num + $cbpsme2a11_total_num + $hrdp2a11_total_num), 2);
    $totalscholarship2a11_balance = number_format(($erdt2a11_balance_num + $asthrdp2a11_balance_num + $cbpsme2a11_balance_num + $hrdp2a11_balance_num), 2);

// =============================== total scholarship =============================== //












// =============================== total gas =============================== //

    $totalgas_1A1_allot = number_format(($salary_allot1a1_num + $pera_allot1a1_num + $rarara_allot1a1_num + $tatata_allot1a1_num + $clothing_allot1a1_num + $productivity_allot1a1_num + $yearend_allot1a1_num + $cashgift_allot1a1_num + $midyear_allot1a1_num + $pagibig_allot1a1_num + $philhealth_allot1a1_num + $ecip_allot1a1_num + $subsistence_allot1a1_num + $laundry_allot1a1_num + $hazard_allot1a1_num + $longetivity_allot1a1_num + $localtravel_allot1a1_num + $foreigntravel_allot1a1_num + $icttraining_allot1a1_num + $officesupplies_allot1a1_num + $officeict_allot1a1_num + $fuel_allot1a1_num + $othersupplies_allot1a1_num + $water_allot1a1_num + $electricity_allot1a1_num + $postage_allot1a1_num + $mobile_allot1a1_num + $landline_allot1a1_num + $internet_allot1a1_num + $building_allot1a1_num + $vehicle_allot1a1_num + $officeequip_allot1a1_num + $extraordinary_allot1a1_num + $professional_allot1a1_num + $janitorial_allot1a1_num + $security_allot1a1_num + $general_allot1a1_num + $fidelity_allot1a1 + $insurance_allot1a1_num + $ictsoftware_allot1a1_num + $othersubscription_allot1a1_num), 2);

    $totalgas_1A1 = number_format(($salary1A1_num + $pera1A1_num + $rarara1A1_num + $tatata1A1_num + $clothing1A1_num + $productivity1A1_num + $yearend1A1_num + $cashgift1A1_num + $midyear1A1_num + $pagibig1A1_num + $philhealth1A1_num + $ecip1A1_num + $subsistence1A1_num + $laundry1A1_num + $hazard1A1_num + $longetivity1A1_num + $localtravel1A1_num + $foreigntravel1A1_num + $icttraining1A1_num + $officesupplies1A1_num + $officeict1A1_num + $fuel1A1_num + $othersupplies1A1_num + $water1A1_num + $electricity1A1_num + $postage1A1_num + $mobile1A1_num + $landline1A1_num + $internet1A1_num + $building1A1_num + $vehicle1A1_num + $officeequip1A1_num + $extraordinary1A1_num + $professional1A1_num + $janitorial1A1_num + $security1A1_num + $general1A1_num + $fidelity1A1_num + $insurance1A1_num + $ictsoftware1A1_num + $othersubscription1A1_num), 2);

    $totalgas_1A1_total = number_format(($salary1A1_total_num + $pera1A1_total_num + $rarara1A1_total_num + $tatata1A1_total_num + $clothing1A1_total_num + $productivity1A1_total_num + $yearend1A1_total_num + $cashgift1A1_total_num + $midyear1A1_total_num + $pagibig1A1_total_num + $philhealth1A1_total_num + $ecip1A1_total_num + $subsistence1A1_total_num + $laundry1A1_total_num + $hazard1A1_total_num + $longetivity1A1_total_num + $localtravel1A1_total_num + $foreigntravel1A1_total_num + $icttraining1A1_total_num + $officesupplies1A1_total_num + $officeict1A1_total_num + $fuel1A1_total_num + $othersupplies1A1_total_num + $water1A1_total_num + $electricity1A1_total_num + $postage1A1_total_num + $mobile1A1_total_num + $landline1A1_total_num + $internet1A1_total_num + $building1A1_total_num + $vehicle1A1_total_num + $officeequip1A1_total_num + $extraordinary1A1_total_num + $professional1A1_total_num + $janitorial1A1_total_num + $security1A1_total_num + $general1A1_total_num + $fidelity1A1_total_num + $insurance1A1_total_num + $ictsoftware1A1_total_num + $othersubscription1A1_total_num), 2);

    $totalgas_1A1_balance = number_format(($salary1A1_balance_num + $pera1A1_balance_num + $rarara1A1_balance_num + $tatata1A1_balance_num + $clothing1A1_balance_num + $productivity1A1_balance_num + $yearend1A1_balance_num + $cashgift1A1_balance_num + $midyear1A1_balance_num + $pagibig1A1_balance_num + $philhealth1A1_balance_num + $ecip1A1_balance_num + $subsistence1A1_balance_num + $laundry1A1_balance_num + $hazard1A1_balance_num + $longetivity1A1_balance_num + $localtravel1A1_balance_num + $foreigntravel1A1_balance_num + $icttraining1A1_balance_num + $officesupplies1A1_balance_num + $officeict1A1_balance_num + $fuel1A1_balance_num + $othersupplies1A1_balance_num + $water1A1_balance_num + $electricity1A1_balance_num + $postage1A1_balance_num + $mobile1A1_balance_num + $landline1A1_balance_num + $internet1A1_balance_num + $building1A1_balance_num + $vehicle1A1_balance_num + $officeequip1A1_balance_num + $extraordinary1A1_balance_num + $professional1A1_balance_num + $janitorial1A1_balance_num + $security1A1_balance_num + $general1A1_balance_num + $fidelity1A1_balance_num + $insurance1A1_balance_num + $ictsoftware1A1_balance_num + $othersubscription1A1_balance_num), 2);
    

// =============================== total gas =============================== //



// 



// =============================== total 2a11 =============================== //

    $total2a11_allot = number_format(($salary_allot2a11_num + $pera_allot2a11_num + $clothing_allot2a11_num + $productivity_allot2a11_num + $yearend_allot2a11_num + $cashgift_allot2a11_num + $midyear_allot2a11_num + $pagibig_allot2a11_num + $philhealth_allot2a11_num + $ecip_allot2a11_num + $subsistence_allot2a11_num + $laundry_allot2a11_num + $hazard_allot2a11_num + $longetivity_allot2a11_num + $localtravel_allot2a11_num + $foreigntravel_allot2a11_num + $officesupplies_allot2a11_num + $fuel_allot2a11_num + $othersupplies_allot2a11_num + $electricity_allot2a11_num + $postage_allot2a11_num + $mobile_allot2a11_num + $landline_allot2a11_num + $erdt_allot2a11_num + $asthrdp_allot2a11_num + $cbpsme_allot2a11_num + $hrdp_allot2a11_num), 2);

    

    $total2a11 = number_format(($salary2a11_num + $pera2a11_num + $clothing2a11_num + $productivity2a11_num + $yearend2a11_num + $cashgift2a11_num + $midyear2a11_num + $pagibig2a11_num + $philhealth2a11_num + $ecip2a11_num + $subsistence2a11_num + $laundry2a11_num + $hazard2a11_num + $longetivity2a11_num + $localtravel2a11_num + $foreigntravel2a11_num + $officesupplies2a11_num + $fuel2a11_num + $othersupplies2a11_num + $electricity2a11_num + $postage2a11_num + $mobile2a11_num + $landline2a11_num + $erdt2a11_num + $asthrdp2a11_num + $cbpsme2a11_num + $hrdp2a11_num), 2);

    

    $total2a11_total = number_format(($salary2a11_total_num + $pera2a11_total_num + $clothing2a11_total_num + $productivity2a11_total_num + $yearend2a11_total_num + $cashgift2a11_total_num + $midyear2a11_total_num + $pagibig2a11_total_num + $philhealth2a11_total_num + $ecip2a11_total_num + $subsistence2a11_total_num + $laundry2a11_total_num + $hazard2a11_total_num + $longetivity2a11_total_num + $localtravel2a11_total_num + $foreigntravel2a11_total_num + $officesupplies2a11_total_num + $fuel2a11_total_num + $othersupplies2a11_total_num + $electricity2a11_total_num + $postage2a11_total_num + $mobile2a11_total_num + $landline2a11_total_num + $erdt2a11_total_num + $asthrdp2a11_total_num + $cbpsme2a11_total_num + $hrdp2a11_total_num), 2);

    $total2a11_balance = number_format(($salary2a11_balance_num + $pera2a11_balance_num + $clothing2a11_balance_num + $productivity2a11_balance_num + $yearend2a11_balance_num + $cashgift2a11_balance_num + $midyear2a11_balance_num + $pagibig2a11_balance_num + $philhealth2a11_balance_num + $ecip2a11_balance_num + $subsistence2a11_balance_num + $laundry2a11_balance_num + $hazard2a11_balance_num + $longetivity2a11_balance_num + $localtravel2a11_balance_num + $foreigntravel2a11_balance_num + $officesupplies2a11_balance_num + $fuel2a11_balance_num + $othersupplies2a11_balance_num + $electricity2a11_balance_num + $othersupplies2a11_balance_num + $electricity2a11_balance_num + $postage2a11_balance_num + $mobile2a11_balance_num + $landline2a11_balance_num + $erdt2a11_balance_num + $asthrdp2a11_balance_num + $cbpsme2a11_balance_num + $hrdp2a11_balance_num),2);

// =============================== total 2a11 =============================== //

