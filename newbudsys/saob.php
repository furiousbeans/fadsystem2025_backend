<?php
require("../connect.php");

$saobmonth = $_POST['month'];
$saobyear = $_POST['year'];

if ($saobmonth == '01'){
    $mon = '1';
}elseif ($saobmonth == '02'){
    $mon = '2';
}elseif ($saobmonth == '03'){
    $mon = '3';
}elseif ($saobmonth == '04'){
    $mon = '4';
}elseif ($saobmonth == '05'){
    $mon = '5';
}elseif ($saobmonth == '06'){
    $mon = '6';
}elseif ($saobmonth == '07'){
    $mon = '7';
}elseif ($saobmonth == '08'){
    $mon = '8';
}elseif ($saobmonth == '09'){
    $mon = '9';
}elseif ($saobmonth == '10'){
    $mon = '10';
}elseif ($saobmonth == '11'){
    $mon = '11';
}elseif ($saobmonth == '12'){
    $mon = '12';
}

// Initialize array
$data = [];

$ors_number_conditions = [];
for ($i = 1; $i <= $mon; $i++) {
    $ors_number_conditions[] = "o.ors_number LIKE '" . str_pad($i, 2, "0", STR_PAD_LEFT) . "-%'";
}
$ors_number_sql = implode(" OR ", $ors_number_conditions);



// ======================================================== SALARY ======================================================== //
// SALARY 1A1
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal1a1_allot, 
                                (
                                    SELECT SUM(amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal1a1_total
      FROM allotment a WHERE a.uacs = '50101010-01' AND a.allotgroup = '1A1' AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal1a1_allot'] = $row['sal1a1_allot'];
    $data['sal1a1'] = $row['sal1a1'];
    $data['sal1a1_total'] = $row['sal1a1_total'];

}

// SALARY 2a11
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal2a11_allot, 
                                (
                                    SELECT SUM(amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a11_total
      FROM allotment a WHERE a.uacs = '50101010-01' AND a.allotgroup = '2A1-1' AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal2a11_allot'] = $row['sal2a11_allot'];
    $data['sal2a11'] = $row['sal2a11'];
    $data['sal2a11_total'] = $row['sal2a11_total'];

}

// SALARY 2a12
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal2a12_allot, 
                                (
                                    SELECT SUM(amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a12_total
      FROM allotment a WHERE a.uacs = '50101010-01' AND a.allotgroup = '2A1-2' AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal2a12_allot'] = $row['sal2a12_allot'];
    $data['sal2a12'] = $row['sal2a12'];
    $data['sal2a12_total'] = $row['sal2a12_total'];

}

// SALARY 2a2
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal2a2_allot, 
                                (
                                    SELECT SUM(amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a2_total
      FROM allotment a WHERE a.uacs = '50101010-01' AND a.allotgroup = '2A2' AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal2a2_allot'] = $row['sal2a2_allot'];
    $data['sal2a2'] = $row['sal2a2'];
    $data['sal2a2_total'] = $row['sal2a2_total'];

}
// ======================================================== SALARY ======================================================== //



// ======================================================== PERA ======================================================== //
// PERA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pera1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102010-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera1a1_allot'] = $row['pera1a1_allot'];
    $data['pera1a1'] = $row['pera1a1'];
    $data['pera1a1_total'] = $row['pera1a1_total'];
}

// PERA 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pera2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102010-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera2a11_allot'] = $row['pera2a11_allot'];
    $data['pera2a11'] = $row['pera2a11'];
    $data['pera2a11_total'] = $row['pera2a11_total'];
}

// PERA 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pera2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102010-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera2a12_allot'] = $row['pera2a12_allot'];
    $data['pera2a12'] = $row['pera2a12'];
    $data['pera2a12_total'] = $row['pera2a12_total'];
}

// 
// PERA 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pera2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102010-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera2a2_allot'] = $row['pera2a2_allot'];
    $data['pera2a2'] = $row['pera2a2'];
    $data['pera2a2_total'] = $row['pera2a2_total'];
}

// ======================================================== PERA ======================================================== //



// ======================================================== RA ======================================================== //
// RA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ra1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102020-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ra1a1_allot'] = $row['ra1a1_allot'];
    $data['ra1a1'] = $row['ra1a1'];
    $data['ra1a1_total'] = $row['ra1a1_total'];
}
// RA 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ra2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102020-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ra2a12_allot'] = $row['ra2a12_allot'];
    $data['ra2a12'] = $row['ra2a12'];
    $data['ra2a12_total'] = $row['ra2a12_total'];
}
// RA 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ra2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102020-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ra2a2_allot'] = $row['ra2a2_allot'];
    $data['ra2a2'] = $row['ra2a2'];
    $data['ra2a2_total'] = $row['ra2a2_total'];
}



// TA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ta1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102030-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ta1a1_allot'] = $row['ta1a1_allot'];
    $data['ta1a1'] = $row['ta1a1'];
    $data['ta1a1_total'] = $row['ta1a1_total'];
}
// TA 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ta2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102030-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ta2a12_allot'] = $row['ta2a12_allot'];
    $data['ta2a12'] = $row['ta2a12'];
    $data['ta2a12_total'] = $row['ta2a12_total'];
}
// TA 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ta2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102030-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ta2a2_allot'] = $row['ta2a2_allot'];
    $data['ta2a2'] = $row['ta2a2'];
    $data['ta2a2_total'] = $row['ta2a2_total'];
}


// clothing 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cloth1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102040-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cloth1a1_allot'] = $row['cloth1a1_allot'];
    $data['cloth1a1'] = $row['cloth1a1'];
    $data['cloth1a1_total'] = $row['cloth1a1_total'];
}
// clothing 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cloth2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102040-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cloth2a11_allot'] = $row['cloth2a11_allot'];
    $data['cloth2a11'] = $row['cloth2a11'];
    $data['cloth2a11_total'] = $row['cloth2a11_total'];
}
// clothing 2a12
// 
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cloth2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102040-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cloth2a12_allot'] = $row['cloth2a12_allot'];
    $data['cloth2a12'] = $row['cloth2a12'];
    $data['cloth2a12_total'] = $row['cloth2a12_total'];
}
// clothing 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cloth2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102040-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cloth2a2_allot'] = $row['cloth2a2_allot'];
    $data['cloth2a2'] = $row['cloth2a2'];
    $data['cloth2a2_total'] = $row['cloth2a2_total'];
}




// PRODUCTIVITY 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS prod1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102990-12' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['prod1a1_allot'] = $row['prod1a1_allot'];
    $data['prod1a1'] = $row['prod1a1'];
    $data['prod1a1_total'] = $row['prod1a1_total'];
}
// PRODUCTIVITY 2A1-1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS prod2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102990-12' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['prod2a11_allot'] = $row['prod2a11_allot'];
    $data['prod2a11'] = $row['prod2a11'];
    $data['prod2a11_total'] = $row['prod2a11_total'];
}
// PRODUCTIVITY 2A1-1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS prod2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102990-12' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['prod2a12_allot'] = $row['prod2a12_allot'];
    $data['prod2a12'] = $row['prod2a12'];
    $data['prod2a12_total'] = $row['prod2a12_total'];
}
// PRODUCTIVITY 2A2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS prod2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102990-12' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['prod2a2_allot'] = $row['prod2a2_allot'];
    $data['prod2a2'] = $row['prod2a2'];
    $data['prod2a2_total'] = $row['prod2a2_total'];
}


// yearend 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS yearend1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102140-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['yearend1a1_allot'] = $row['yearend1a1_allot'];
    $data['yearend1a1'] = $row['yearend1a1'];
    $data['yearend1a1_total'] = $row['yearend1a1_total'];
}
// yearend 2A1-1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS yearend2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102140-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['yearend2a11_allot'] = $row['yearend2a11_allot'];
    $data['yearend2a11'] = $row['yearend2a11'];
    $data['yearend2a11_total'] = $row['yearend2a11_total'];
}
// yearend 2A1-1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS yearend2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102140-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['yearend2a12_allot'] = $row['yearend2a12_allot'];
    $data['yearend2a12'] = $row['yearend2a12'];
    $data['yearend2a12_total'] = $row['yearend2a12_total'];
}

// yearend 2A2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS yearend2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102140-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['yearend2a2_allot'] = $row['yearend2a2_allot'];
    $data['yearend2a2'] = $row['yearend2a2'];
    $data['yearend2a2_total'] = $row['yearend2a2_total'];
}


// cashgift 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cashgift1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102150-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cashgift1a1_allot'] = $row['cashgift1a1_allot'];
    $data['cashgift1a1'] = $row['cashgift1a1'];
    $data['cashgift1a1_total'] = $row['cashgift1a1_total'];
}
// cashgift 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cashgift2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102150-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cashgift2a11_allot'] = $row['cashgift2a11_allot'];
    $data['cashgift2a11'] = $row['cashgift2a11'];
    $data['cashgift2a11_total'] = $row['cashgift2a11_total'];
}

// cashgift 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cashgift2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102150-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cashgift2a12_allot'] = $row['cashgift2a12_allot'];
    $data['cashgift2a12'] = $row['cashgift2a12'];
    $data['cashgift2a12_total'] = $row['cashgift2a12_total'];
}
// cashgift 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cashgift2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102150-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cashgift2a2_allot'] = $row['cashgift2a2_allot'];
    $data['cashgift2a2'] = $row['cashgift2a2'];
    $data['cashgift2a2_total'] = $row['cashgift2a2_total'];
}


// midyear 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS midyear1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102160-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['midyear1a1_allot'] = $row['midyear1a1_allot'];
    $data['midyear1a1'] = $row['midyear1a1'];
    $data['midyear1a1_total'] = $row['midyear1a1_total'];
}
// midyear 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS midyear2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102160-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['midyear2a11_allot'] = $row['midyear2a11_allot'];
    $data['midyear2a11'] = $row['midyear2a11'];
    $data['midyear2a11_total'] = $row['midyear2a11_total'];
}
// midyear 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS midyear2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102160-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['midyear2a12_allot'] = $row['midyear2a12_allot'];
    $data['midyear2a12'] = $row['midyear2a12'];
    $data['midyear2a12_total'] = $row['midyear2a12_total'];
}
// midyear 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS midyear2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102160-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['midyear2a2_allot'] = $row['midyear2a2_allot'];
    $data['midyear2a2'] = $row['midyear2a2'];
    $data['midyear2a2_total'] = $row['midyear2a2_total'];
}


// pagibig 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pagibig1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig1a1_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103020%' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pagibig1a1_allot'] = $row['pagibig1a1_allot'];
    $data['pagibig1a1'] = $row['pagibig1a1'];
    $data['pagibig1a1_total'] = $row['pagibig1a1_total'];
}
// pagibig 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pagibig2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a11_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103020%' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pagibig2a11_allot'] = $row['pagibig2a11_allot'];
    $data['pagibig2a11'] = $row['pagibig2a11'];
    $data['pagibig2a11_total'] = $row['pagibig2a11_total'];
}
// pagibig 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pagibig2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a12_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103020%' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pagibig2a12_allot'] = $row['pagibig2a12_allot'];
    $data['pagibig2a12'] = $row['pagibig2a12'];
    $data['pagibig2a12_total'] = $row['pagibig2a12_total'];
}
// pagibig 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pagibig2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig2a2_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103020%' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pagibig2a2_allot'] = $row['pagibig2a2_allot'];
    $data['pagibig2a2'] = $row['pagibig2a2'];
    $data['pagibig2a2_total'] = $row['pagibig2a2_total'];
}


// philhealth 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS philhealth1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth1a1_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103030%' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['philhealth1a1_allot'] = $row['philhealth1a1_allot'];
    $data['philhealth1a1'] = $row['philhealth1a1'];
    $data['philhealth1a1_total'] = $row['philhealth1a1_total'];
}


// philhealth 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS philhealth2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a11_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103030%' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['philhealth2a11_allot'] = $row['philhealth2a11_allot'];
    $data['philhealth2a11'] = $row['philhealth2a11'];
    $data['philhealth2a11_total'] = $row['philhealth2a11_total'];
}

// 

// philhealth 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS philhealth2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a12_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103030%' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['philhealth2a12_allot'] = $row['philhealth2a12_allot'];
    $data['philhealth2a12'] = $row['philhealth2a12'];
    $data['philhealth2a12_total'] = $row['philhealth2a12_total'];
}
// philhealth 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS philhealth2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth2a2_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103030%' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['philhealth2a2_allot'] = $row['philhealth2a2_allot'];
    $data['philhealth2a2'] = $row['philhealth2a2'];
    $data['philhealth2a2_total'] = $row['philhealth2a2_total'];
}


// ecip 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ecip1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip1a1_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103040%' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ecip1a1_allot'] = $row['ecip1a1_allot'];
    $data['ecip1a1'] = $row['ecip1a1'];
    $data['ecip1a1_total'] = $row['ecip1a1_total'];
}
// ecip 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ecip2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a11_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103040%' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ecip2a11_allot'] = $row['ecip2a11_allot'];
    $data['ecip2a11'] = $row['ecip2a11'];
    $data['ecip2a11_total'] = $row['ecip2a11_total'];
}

// ecip 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ecip2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a12_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103040%' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ecip2a12_allot'] = $row['ecip2a12_allot'];
    $data['ecip2a12'] = $row['ecip2a12'];
    $data['ecip2a12_total'] = $row['ecip2a12_total'];
}
// ecip 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ecip2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap LIKE '2A2-%'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip2a2_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103040%' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ecip2a2_allot'] = $row['ecip2a2_allot'];
    $data['ecip2a2'] = $row['ecip2a2'];
    $data['ecip2a2_total'] = $row['ecip2a2_total'];
}



// subsis 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS subsis1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102050-02' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['subsis1a1_allot'] = $row['subsis1a1_allot'];
    $data['subsis1a1'] = $row['subsis1a1'];
    $data['subsis1a1_total'] = $row['subsis1a1_total'];
}
// subsis 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS subsis2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102050-02' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['subsis2a11_allot'] = $row['subsis2a11_allot'];
    $data['subsis2a11'] = $row['subsis2a11'];
    $data['subsis2a11_total'] = $row['subsis2a11_total'];
}
// subsis 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS subsis2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102050-02' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['subsis2a12_allot'] = $row['subsis2a12_allot'];
    $data['subsis2a12'] = $row['subsis2a12'];
    $data['subsis2a12_total'] = $row['subsis2a12_total'];
}
// subsis 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS subsis2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102050-02' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['subsis2a2_allot'] = $row['subsis2a2_allot'];
    $data['subsis2a2'] = $row['subsis2a2'];
    $data['subsis2a2_total'] = $row['subsis2a2_total'];
}


// laundry 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS laundry1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102060-03' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['laundry1a1_allot'] = $row['laundry1a1_allot'];
    $data['laundry1a1'] = $row['laundry1a1'];
    $data['laundry1a1_total'] = $row['laundry1a1_total'];
}
// laundry 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS laundry2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102060-03' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['laundry2a11_allot'] = $row['laundry2a11_allot'];
    $data['laundry2a11'] = $row['laundry2a11'];
    $data['laundry2a11_total'] = $row['laundry2a11_total'];
}
// laundry 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS laundry2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102060-03' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['laundry2a12_allot'] = $row['laundry2a12_allot'];
    $data['laundry2a12'] = $row['laundry2a12'];
    $data['laundry2a12_total'] = $row['laundry2a12_total'];
}
// laundry 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS laundry2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102060-03' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['laundry2a2_allot'] = $row['laundry2a2_allot'];
    $data['laundry2a2'] = $row['laundry2a2'];
    $data['laundry2a2_total'] = $row['laundry2a2_total'];
}


// hazard 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hazard1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102110-04' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['hazard1a1_allot'] = $row['hazard1a1_allot'];
    $data['hazard1a1'] = $row['hazard1a1'];
    $data['hazard1a1_total'] = $row['hazard1a1_total'];
}
// hazard 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hazard2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102110-04' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['hazard2a11_allot'] = $row['hazard2a11_allot'];
    $data['hazard2a11'] = $row['hazard2a11'];
    $data['hazard2a11_total'] = $row['hazard2a11_total'];
}
// hazard 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hazard2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102110-04' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['hazard2a12_allot'] = $row['hazard2a12_allot'];
    $data['hazard2a12'] = $row['hazard2a12'];
    $data['hazard2a12_total'] = $row['hazard2a12_total'];
}
// hazard 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hazard2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102110-04' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['hazard2a2_allot'] = $row['hazard2a2_allot'];
    $data['hazard2a2'] = $row['hazard2a2'];
    $data['hazard2a2_total'] = $row['hazard2a2_total'];
}


// longetivity 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longetivity1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102120-03' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['longetivity1a1_allot'] = $row['longetivity1a1_allot'];
    $data['longetivity1a1'] = $row['longetivity1a1'];
    $data['longetivity1a1_total'] = $row['longetivity1a1_total'];
}
// longetivity 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longetivity2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50102120-03' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['longetivity2a11_allot'] = $row['longetivity2a11_allot'];
    $data['longetivity2a11'] = $row['longetivity2a11'];
    $data['longetivity2a11_total'] = $row['longetivity2a11_total'];
}
// longetivity 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longetivity2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50102120-03' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['longetivity2a12_allot'] = $row['longetivity2a12_allot'];
    $data['longetivity2a12'] = $row['longetivity2a12'];
    $data['longetivity2a12_total'] = $row['longetivity2a12_total'];
}
// longetivity 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longetivity2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50102120-03' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['longetivity2a2_allot'] = $row['longetivity2a2_allot'];
    $data['longetivity2a2'] = $row['longetivity2a2'];
    $data['longetivity2a2_total'] = $row['longetivity2a2_total'];
}



// localtravel 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50201010-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel1a1_allot'] = $row['localtravel1a1_allot'];
    $data['localtravel1a1'] = $row['localtravel1a1'];
    $data['localtravel1a1_total'] = $row['localtravel1a1_total'];
}
// localtravel 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50201010-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel2a11_allot'] = $row['localtravel2a11_allot'];
    $data['localtravel2a11'] = $row['localtravel2a11'];
    $data['localtravel2a11_total'] = $row['localtravel2a11_total'];
}
// localtravel 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50201010-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel2a12_allot'] = $row['localtravel2a12_allot'];
    $data['localtravel2a12'] = $row['localtravel2a12'];
    $data['localtravel2a12_total'] = $row['localtravel2a12_total'];
}
// localtravel 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50201010-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel2a2_allot'] = $row['localtravel2a2_allot'];
    $data['localtravel2a2'] = $row['localtravel2a2'];
    $data['localtravel2a2_total'] = $row['localtravel2a2_total'];
}
// localtravel 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50201010-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel3a1_allot'] = $row['localtravel3a1_allot'];
    $data['localtravel3a1'] = $row['localtravel3a1'];
    $data['localtravel3a1_total'] = $row['localtravel3a1_total'];
}



// foreigntravel 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS foreigntravel1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50201020-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['foreigntravel1a1_allot'] = $row['foreigntravel1a1_allot'];
    $data['foreigntravel1a1'] = $row['foreigntravel1a1'];
    $data['foreigntravel1a1_total'] = $row['foreigntravel1a1_total'];
}
// foreigntravel 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS foreigntravel2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50201020-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['foreigntravel2a11_allot'] = $row['foreigntravel2a11_allot'];
    $data['foreigntravel2a11'] = $row['foreigntravel2a11'];
    $data['foreigntravel2a11_total'] = $row['foreigntravel2a11_total'];
}
// foreigntravel 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS foreigntravel2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50201020-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['foreigntravel2a12_allot'] = $row['foreigntravel2a12_allot'];
    $data['foreigntravel2a12'] = $row['foreigntravel2a12'];
    $data['foreigntravel2a12_total'] = $row['foreigntravel2a12_total'];
}
// foreigntravel 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS foreigntravel2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50201020-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['foreigntravel2a2_allot'] = $row['foreigntravel2a2_allot'];
    $data['foreigntravel2a2'] = $row['foreigntravel2a2'];
    $data['foreigntravel2a2_total'] = $row['foreigntravel2a2_total'];
}

// 

// erdt 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS erdt2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-103 ERDT'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS erdt2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-103 ERDT'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS erdt2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50202020-00' 
							AND a. objclass = 'ERDT' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['erdt2a11_allot'] = $row['erdt2a11_allot'];
    $data['erdt2a11'] = $row['erdt2a11'];
    $data['erdt2a11_total'] = $row['erdt2a11_total'];
}
// asthrdp 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS asthrdp2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-104 ASTHRDP'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS asthrdp2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-104 ASTHRDP'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS asthrdp2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50202020-00' 
							AND a. objclass = 'ASTHRDP' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['asthrdp2a11_allot'] = $row['asthrdp2a11_allot'];
    $data['asthrdp2a11'] = $row['asthrdp2a11'];
    $data['asthrdp2a11_total'] = $row['asthrdp2a11_total'];
}
// cbpsme 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cbpsme2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-105 CBPSME'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cbpsme2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-105 CBPSME'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS cbpsme2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50202020-00' 
							AND a. objclass = 'CBPSME' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['cbpsme2a11_allot'] = $row['cbpsme2a11_allot'];
    $data['cbpsme2a11'] = $row['cbpsme2a11'];
    $data['cbpsme2a11_total'] = $row['cbpsme2a11_total'];
}
// hrdp 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hrdp2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-106 HRDP'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hrdp2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '2A1-106 HRDP'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hrdp2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50202020-00' 
							AND a. objclass = 'HRDP' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['hrdp2a11_allot'] = $row['hrdp2a11_allot'];
    $data['hrdp2a11'] = $row['hrdp2a11'];
    $data['hrdp2a11_total'] = $row['hrdp2a11_total'];
}


// scholarship 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS scholarship2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND (o.mfopap = '2A1-101 PATRIOT' OR o.mfopap = '2A1-101 RA7687' OR o.mfopap = '2A1-102 MERIT')
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS scholarship2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND (o.mfopap = '2A1-101 PATRIOT' OR o.mfopap = '2A1-101 RA7687' OR o.mfopap = '2A1-102 MERIT')
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS scholarship2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50202020-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['scholarship2a12_allot'] = $row['scholarship2a12_allot'];
    $data['scholarship2a12'] = $row['scholarship2a12'];
    $data['scholarship2a12_total'] = $row['scholarship2a12_total'];
}



// icttraining 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS icttraining1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS icttraining1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS icttraining1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50202010-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['icttraining1a1_allot'] = $row['icttraining1a1_allot'];
    $data['icttraining1a1'] = $row['icttraining1a1'];
    $data['icttraining1a1_total'] = $row['icttraining1a1_total'];
}



// officesupplies 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officesupplies1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-02' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies1a1_allot'] = $row['officesupplies1a1_allot'];
    $data['officesupplies1a1'] = $row['officesupplies1a1'];
    $data['officesupplies1a1_total'] = $row['officesupplies1a1_total'];
}
// officesupplies 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officesupplies2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-02' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies2a11_allot'] = $row['officesupplies2a11_allot'];
    $data['officesupplies2a11'] = $row['officesupplies2a11'];
    $data['officesupplies2a11_total'] = $row['officesupplies2a11_total'];
}
// officesupplies 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officesupplies2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-02' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies2a12_allot'] = $row['officesupplies2a12_allot'];
    $data['officesupplies2a12'] = $row['officesupplies2a12'];
    $data['officesupplies2a12_total'] = $row['officesupplies2a12_total'];
}
// officesupplies 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officesupplies2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-02' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies2a2_allot'] = $row['officesupplies2a2_allot'];
    $data['officesupplies2a2'] = $row['officesupplies2a2'];
    $data['officesupplies2a2_total'] = $row['officesupplies2a2_total'];
}
// officesupplies 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officesupplies3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-02' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies3a1_allot'] = $row['officesupplies3a1_allot'];
    $data['officesupplies3a1'] = $row['officesupplies3a1'];
    $data['officesupplies3a1_total'] = $row['officesupplies3a1_total'];
}




// officeict 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officeict1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeict1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeict1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203010-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officeict1a1_allot'] = $row['officeict1a1_allot'];
    $data['officeict1a1'] = $row['officeict1a1'];
    $data['officeict1a1_total'] = $row['officeict1a1_total'];
}

// fuel 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS fuel1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203090-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fuel1a1_allot'] = $row['fuel1a1_allot'];
    $data['fuel1a1'] = $row['fuel1a1'];
    $data['fuel1a1_total'] = $row['fuel1a1_total'];
}
// fuel 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS fuel2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50203090-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fuel2a11_allot'] = $row['fuel2a11_allot'];
    $data['fuel2a11'] = $row['fuel2a11'];
    $data['fuel2a11_total'] = $row['fuel2a11_total'];
}
// fuel 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS fuel2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50203090-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fuel2a12_allot'] = $row['fuel2a12_allot'];
    $data['fuel2a12'] = $row['fuel2a12'];
    $data['fuel2a12_total'] = $row['fuel2a12_total'];
}

// fuel 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS fuel2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50203090-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fuel2a2_allot'] = $row['fuel2a2_allot'];
    $data['fuel2a2'] = $row['fuel2a2'];
    $data['fuel2a2_total'] = $row['fuel2a2_total'];
}



// othersupplies 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203990-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies1a1_allot'] = $row['othersupplies1a1_allot'];
    $data['othersupplies1a1'] = $row['othersupplies1a1'];
    $data['othersupplies1a1_total'] = $row['othersupplies1a1_total'];
}
// othersupplies 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50203990-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies2a11_allot'] = $row['othersupplies2a11_allot'];
    $data['othersupplies2a11'] = $row['othersupplies2a11'];
    $data['othersupplies2a11_total'] = $row['othersupplies2a11_total'];
}
// othersupplies 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50203990-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies2a12_allot'] = $row['othersupplies2a12_allot'];
    $data['othersupplies2a12'] = $row['othersupplies2a12'];
    $data['othersupplies2a12_total'] = $row['othersupplies2a12_total'];
}
// othersupplies 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50203990-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies2a2_allot'] = $row['othersupplies2a2_allot'];
    $data['othersupplies2a2'] = $row['othersupplies2a2'];
    $data['othersupplies2a2_total'] = $row['othersupplies2a2_total'];
}
// othersupplies 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50203990-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies3a1_allot'] = $row['othersupplies3a1_allot'];
    $data['othersupplies3a1'] = $row['othersupplies3a1'];
    $data['othersupplies3a1_total'] = $row['othersupplies3a1_total'];
}


// water 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS water1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS water1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS water1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50204010-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['water1a1_allot'] = $row['water1a1_allot'];
    $data['water1a1'] = $row['water1a1'];
    $data['water1a1_total'] = $row['water1a1_total'];
}



// electricity 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS electricity1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50204020-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['electricity1a1_allot'] = $row['electricity1a1_allot'];
    $data['electricity1a1'] = $row['electricity1a1'];
    $data['electricity1a1_total'] = $row['electricity1a1_total'];
}
// electricity 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS electricity2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50204020-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['electricity2a11_allot'] = $row['electricity2a11_allot'];
    $data['electricity2a11'] = $row['electricity2a11'];
    $data['electricity2a11_total'] = $row['electricity2a11_total'];
}
// electricity 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS electricity2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50204020-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['electricity2a12_allot'] = $row['electricity2a12_allot'];
    $data['electricity2a12'] = $row['electricity2a12'];
    $data['electricity2a12_total'] = $row['electricity2a12_total'];
}
// electricity 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS electricity2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50204020-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['electricity2a2_allot'] = $row['electricity2a2_allot'];
    $data['electricity2a2'] = $row['electricity2a2'];
    $data['electricity2a2_total'] = $row['electricity2a2_total'];
}

// postage 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205010-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage1a1_allot'] = $row['postage1a1_allot'];
    $data['postage1a1'] = $row['postage1a1'];
    $data['postage1a1_total'] = $row['postage1a1_total'];
}
// postage 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50205010-00' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage2a11_allot'] = $row['postage2a11_allot'];
    $data['postage2a11'] = $row['postage2a11'];
    $data['postage2a11_total'] = $row['postage2a11_total'];
}
// postage 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50205010-00' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage2a12_allot'] = $row['postage2a12_allot'];
    $data['postage2a12'] = $row['postage2a12'];
    $data['postage2a12_total'] = $row['postage2a12_total'];
}
// postage 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50205010-00' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage2a2_allot'] = $row['postage2a2_allot'];
    $data['postage2a2'] = $row['postage2a2'];
    $data['postage2a2_total'] = $row['postage2a2_total'];
}
// postage 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205010-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage3a1_allot'] = $row['postage3a1_allot'];
    $data['postage3a1'] = $row['postage3a1'];
    $data['postage3a1_total'] = $row['postage3a1_total'];
}



// mobile 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile1a1_allot'] = $row['mobile1a1_allot'];
    $data['mobile1a1'] = $row['mobile1a1'];
    $data['mobile1a1_total'] = $row['mobile1a1_total'];
}
// mobile 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-01' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile2a11_allot'] = $row['mobile2a11_allot'];
    $data['mobile2a11'] = $row['mobile2a11'];
    $data['mobile2a11_total'] = $row['mobile2a11_total'];
}
// mobile 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-01' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile2a12_allot'] = $row['mobile2a12_allot'];
    $data['mobile2a12'] = $row['mobile2a12'];
    $data['mobile2a12_total'] = $row['mobile2a12_total'];
}
// mobile 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-01' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile2a2_allot'] = $row['mobile2a2_allot'];
    $data['mobile2a2'] = $row['mobile2a2'];
    $data['mobile2a2_total'] = $row['mobile2a2_total'];
}
// mobile 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-01' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile3a1_allot'] = $row['mobile3a1_allot'];
    $data['mobile3a1'] = $row['mobile3a1'];
    $data['mobile3a1_total'] = $row['mobile3a1_total'];
}



// landline 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS landline1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-02' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['landline1a1_allot'] = $row['landline1a1_allot'];
    $data['landline1a1'] = $row['landline1a1'];
    $data['landline1a1_total'] = $row['landline1a1_total'];
}

// landline 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS landline2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a11_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-02' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['landline2a11_allot'] = $row['landline2a11_allot'];
    $data['landline2a11'] = $row['landline2a11'];
    $data['landline2a11_total'] = $row['landline2a11_total'];
}
// landline 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS landline2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a12_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-02' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['landline2a12_allot'] = $row['landline2a12_allot'];
    $data['landline2a12'] = $row['landline2a12'];
    $data['landline2a12_total'] = $row['landline2a12_total'];
}
// landline 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS landline2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline2a2_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-02' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['landline2a2_allot'] = $row['landline2a2_allot'];
    $data['landline2a2'] = $row['landline2a2'];
    $data['landline2a2_total'] = $row['landline2a2_total'];
}

// internet 1A1
// 

try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS internet1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS internet1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS internet1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205030-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['internet1a1_allot'] = $row['internet1a1_allot'];
    $data['internet1a1'] = $row['internet1a1'];
    $data['internet1a1_total'] = $row['internet1a1_total'];
}

// building 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS building1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS building1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS building1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50213040-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['building1a1_allot'] = $row['building1a1_allot'];
    $data['building1a1'] = $row['building1a1'];
    $data['building1a1_total'] = $row['building1a1_total'];
}

// vehicle 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS vehicle1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS vehicle1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS vehicle1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50213060-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['vehicle1a1_allot'] = $row['vehicle1a1_allot'];
    $data['vehicle1a1'] = $row['vehicle1a1'];
    $data['vehicle1a1_total'] = $row['vehicle1a1_total'];
}

// officeequip 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officeequip1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeequip1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeequip1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50213050-02' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officeequip1a1_allot'] = $row['officeequip1a1_allot'];
    $data['officeequip1a1'] = $row['officeequip1a1'];
    $data['officeequip1a1_total'] = $row['officeequip1a1_total'];
}

// extraordinary 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS extraordinary1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS extraordinary1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS extraordinary1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50210030-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['extraordinary1a1_allot'] = $row['extraordinary1a1_allot'];
    $data['extraordinary1a1'] = $row['extraordinary1a1'];
    $data['extraordinary1a1_total'] = $row['extraordinary1a1_total'];
}

// professional 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS professional1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS professional1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS professional1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50211990-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['professional1a1_allot'] = $row['professional1a1_allot'];
    $data['professional1a1'] = $row['professional1a1'];
    $data['professional1a1_total'] = $row['professional1a1_total'];
}
// professional 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS professional3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '3A1 PD997'
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS professional3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = '3A1 PD997'
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS professional3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50211990-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['professional3a1_allot'] = $row['professional3a1_allot'];
    $data['professional3a1'] = $row['professional3a1'];
    $data['professional3a1_total'] = $row['professional3a1_total'];
}

// janitorial 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS janitorial1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS janitorial1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS janitorial1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50212020-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['janitorial1a1_allot'] = $row['janitorial1a1_allot'];
    $data['janitorial1a1'] = $row['janitorial1a1'];
    $data['janitorial1a1_total'] = $row['janitorial1a1_total'];
}

// general 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS general1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS general1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS general1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50212990-99' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['general1a1_allot'] = $row['general1a1_allot'];
    $data['general1a1'] = $row['general1a1'];
    $data['general1a1_total'] = $row['general1a1_total'];
}

// security 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS security1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS security1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS security1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50212030-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['security1a1_allot'] = $row['security1a1_allot'];
    $data['security1a1'] = $row['security1a1'];
    $data['security1a1_total'] = $row['security1a1_total'];
}

// fidelity 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS fidelity1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fidelity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS fidelity1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50215020-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fidelity1a1_allot'] = $row['fidelity1a1_allot'];
    $data['fidelity1a1'] = $row['fidelity1a1'];
    $data['fidelity1a1_total'] = $row['fidelity1a1_total'];
}

// insurance 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS insurance1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS insurance1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS insurance1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50215030-00' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['insurance1a1_allot'] = $row['insurance1a1_allot'];
    $data['insurance1a1'] = $row['insurance1a1'];
    $data['insurance1a1_total'] = $row['insurance1a1_total'];
}

// ictsoftware 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ictsoftware1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ictsoftware1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS ictsoftware1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50299070-01' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ictsoftware1a1_allot'] = $row['ictsoftware1a1_allot'];
    $data['ictsoftware1a1'] = $row['ictsoftware1a1'];
    $data['ictsoftware1a1_total'] = $row['ictsoftware1a1_total'];
}

// othersub 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersub1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersub1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersub1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50299070-99' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersub1a1_allot'] = $row['othersub1a1_allot'];
    $data['othersub1a1'] = $row['othersub1a1'];
    $data['othersub1a1_total'] = $row['othersub1a1_total'];
}


// printpub 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS printpub3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS printpub3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS printpub3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50299020-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['printpub3a1_allot'] = $row['printpub3a1_allot'];
    $data['printpub3a1'] = $row['printpub3a1'];
    $data['printpub3a1_total'] = $row['printpub3a1_total'];
}

// representation 3a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS representation3a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS representation3a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS representation3a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50299030-00' 
                            AND a.allotgroup = '3A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['representation3a1_allot'] = $row['representation3a1_allot'];
    $data['representation3a1'] = $row['representation3a1'];
    $data['representation3a1_total'] = $row['representation3a1_total'];
}


// rlip 1a1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS rlip1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip1a1_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103010%' 
                            AND a.allotgroup = '1A1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['rlip1a1_allot'] = $row['rlip1a1_allot'];
    $data['rlip1a1'] = $row['rlip1a1'];
    $data['rlip1a1_total'] = $row['rlip1a1_total'];
}
// rlip 2a11
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS rlip2a11_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a11_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103010%' 
                            AND a.allotgroup = '2A1-1' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['rlip2a11_allot'] = $row['rlip2a11_allot'];
    $data['rlip2a11'] = $row['rlip2a11'];
    $data['rlip2a11_total'] = $row['rlip2a11_total'];
}
// rlip 2a12
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS rlip2a12_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a12,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a12_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103010%' 
                            AND a.allotgroup = '2A1-2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['rlip2a12_allot'] = $row['rlip2a12_allot'];
    $data['rlip2a12'] = $row['rlip2a12'];
    $data['rlip2a12_total'] = $row['rlip2a12_total'];
}
// rlip 2a2
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS rlip2a2_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap LIKE '2A2%' 
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a2,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2025 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103010%' 
                                    AND o.mfopap LIKE '2A2%' 
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS rlip2a2_total
                            FROM allotment a 
                            WHERE a.uacs LIKE '50103010%' 
                            AND a.allotgroup = '2A2' 
                            AND a.allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => $saobyear,
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['rlip2a2_allot'] = $row['rlip2a2_allot'];
    $data['rlip2a2'] = $row['rlip2a2'];
    $data['rlip2a2_total'] = $row['rlip2a2_total'];
}

// 









// Set query results
echo json_encode($data);

$stnt = null;
$pdo = null;
