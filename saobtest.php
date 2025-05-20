<?php
require("connect.php");

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



// ============================ SALARY ============================ //
// SALARY 1A1
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal1a1_allot, 
                                (
                                    SELECT SUM(amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month 
                                    AND o.ors_random LIKE :ors_random
                                ) AS sal2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// ============================ SALARY ============================ //



// ============================ PERA ============================ //
// PERA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pera1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pera2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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


// 

// ============================ PERA ============================ //


// RA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ra1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ra1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// TA 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ta1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ta1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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


// clothing 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cloth1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cloth2a11,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// 

// PRODUCTIVITY 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS prod1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS prod1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// yearend 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS yearend1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS yearend1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// cashgift 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS cashgift1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS cashgift1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// midyear 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS midyear1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS midyear1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// pagibig 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS pagibig1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103020%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS pagibig1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// philhealth 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS philhealth1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103030%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS philhealth1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// ecip 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS ecip1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs LIKE '50103040%' 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ecip1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// subsis 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS subsis1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS subsis1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// laundry 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS laundry1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS laundry1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// hazard 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS hazard1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS hazard1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102110-01' 
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
// longetivity 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longetivity1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longetivity1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50102120-01' 
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
// localtravel 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS localtravel1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS localtravel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// foreigntravel 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS foreigntravel1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS foreigntravel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
// icttraining 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS icttraining1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS icttraining1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officesupplies1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// officeict 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS officeict1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeict1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fuel1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// othersupplies 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS othersupplies1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersupplies1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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


// water 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS water1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS water1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS electricity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// postage 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS postage1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS postage1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// mobile 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS mobile1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS mobile1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// landline 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS landline1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS landline1a1_total
                            FROM allotment a 
                            WHERE a.uacs = '50205020-002' 
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

// internet 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS internet1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS internet1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS building1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS vehicle1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS officeequip1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS extraordinary1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS professional1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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

// janitorial 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS janitorial1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS janitorial1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS general1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS security1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS fidelity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS insurance1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS ictsoftware1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS othersub1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
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



// 


// Set query results
echo json_encode($data);

$stnt = null;
$pdo = null;



//