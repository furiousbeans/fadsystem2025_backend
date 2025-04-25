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
// longitivity 1A1
try
{
    $stnt = $pdo->prepare("SELECT a.allotment AS longitivity1a1_allot,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND o.ors_number LIKE :ors_month
                                    AND o.ors_random LIKE :ors_random
                                ) AS longitivity1a1,
                                (
                                    SELECT SUM(o.amount)
                                    FROM orstbl2023 o
                                    WHERE o.iscontinuing = 0 
                                    AND o.isactive = 1 
                                    AND o.uacs = a.uacs 
                                    AND o.mfopap = a.allotgroup
                                    AND ({$ors_number_sql})
                                    AND o.ors_random LIKE :ors_random
                                ) AS longitivity1a1_total
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
    $data['longitivity1a1_allot'] = $row['longitivity1a1_allot'];
    $data['longitivity1a1'] = $row['longitivity1a1'];
    $data['longitivity1a1_total'] = $row['longitivity1a1_total'];
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


// 

// Set query results
echo json_encode($data);

$stnt = null;
$pdo = null;
