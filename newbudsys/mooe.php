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



// ================================================================================================================= //
// ================================================================================================================= //

// local
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS localtravel1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS localtravel2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS localtravel2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS localtravel2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS localtravel3a1
                            FROM orstbl2025
                            WHERE uacs = '50201010-00' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['localtravel1a1'] = $row['localtravel1a1'];
    $data['localtravel2a11'] = $row['localtravel2a11'];
    $data['localtravel2a12'] = $row['localtravel2a12'];
    $data['localtravel2a2'] = $row['localtravel2a2'];
    $data['localtravel3a1'] = $row['localtravel3a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// foreign 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS foreigntravel1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS foreigntravel2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS foreigntravel2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS foreigntravel2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS foreigntravel3a1
                            FROM orstbl2025
                            WHERE uacs = '50201020-00' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['foreigntravel1a1'] = $row['foreigntravel1a1'];
    $data['foreigntravel2a11'] = $row['foreigntravel2a11'];
    $data['foreigntravel2a12'] = $row['foreigntravel2a12'];
    $data['foreigntravel2a2'] = $row['foreigntravel2a2'];
    $data['foreigntravel3a1'] = $row['foreigntravel3a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// landline 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS landline1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS landline2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS landline2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS landline2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS landline3a1
                            FROM orstbl2025
                            WHERE uacs = '50205020-02' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['landline1a1'] = $row['landline1a1'];
    $data['landline2a11'] = $row['landline2a11'];
    $data['landline2a12'] = $row['landline2a12'];
    $data['landline2a2'] = $row['landline2a2'];
    $data['landline3a1'] = $row['landline3a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// mobile 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS mobile1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS mobile2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS mobile2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS mobile2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS mobile3a1
                            FROM orstbl2025
                            WHERE uacs = '50205020-01' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['mobile1a1'] = $row['mobile1a1'];
    $data['mobile2a11'] = $row['mobile2a11'];
    $data['mobile2a12'] = $row['mobile2a12'];
    $data['mobile2a2'] = $row['mobile2a2'];
    $data['mobile3a1'] = $row['mobile3a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// postage 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS postage1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS postage2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS postage2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS postage2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS postage3a1
                            FROM orstbl2025
                            WHERE uacs = '50205010-00' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['postage1a1'] = $row['postage1a1'];
    $data['postage2a11'] = $row['postage2a11'];
    $data['postage2a12'] = $row['postage2a12'];
    $data['postage2a2'] = $row['postage2a2'];
    $data['postage3a1'] = $row['postage3a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// building 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS building1a1
                            FROM orstbl2025
                            WHERE uacs = '50213040-01' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['building1a1'] = $row['building1a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// officeequip 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS officeequip1a1
                            FROM orstbl2025
                            WHERE uacs = '50213050-02' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officeequip1a1'] = $row['officeequip1a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// vehicle 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS vehicle1a1
                            FROM orstbl2025
                            WHERE uacs = '50213060-01' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['vehicle1a1'] = $row['vehicle1a1'];
}

// ================================================================================================================= //
// ================================================================================================================= //

// officesupplies 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS officesupplies1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS officesupplies2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS officesupplies2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS officesupplies2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS officesupplies3a1
                            FROM orstbl2025
                            WHERE uacs = '50203010-02' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officesupplies1a1'] = $row['officesupplies1a1'];
    $data['officesupplies2a11'] = $row['officesupplies2a11'];
    $data['officesupplies2a12'] = $row['officesupplies2a12'];
    $data['officesupplies2a2'] = $row['officesupplies2a2'];
    $data['officesupplies3a1'] = $row['officesupplies3a1'];
}


// ================================================================================================================= //
// ================================================================================================================= //

// fuel 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS fuel1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS fuel2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS fuel2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS fuel2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS fuel3a1
                            FROM orstbl2025
                            WHERE uacs = '50203090-00' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['fuel1a1'] = $row['fuel1a1'];
    $data['fuel2a11'] = $row['fuel2a11'];
    $data['fuel2a12'] = $row['fuel2a12'];
    $data['fuel2a2'] = $row['fuel2a2'];
    $data['fuel3a1'] = $row['fuel3a1'];
}


// ================================================================================================================= //
// ================================================================================================================= //

// officeict 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS officeict1a1
                            FROM orstbl2025
                            WHERE uacs = '50203010-01' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['officeict1a1'] = $row['officeict1a1'];
}


// ================================================================================================================= //
// ================================================================================================================= //

// othersupplies 
try
{
    $stnt = $pdo->prepare("SELECT 
                                SUM(CASE WHEN mfopap = '1A1' THEN amount ELSE 0 END) AS othersupplies1a1,
                                SUM(CASE WHEN mfopap = '2A1-1' THEN amount ELSE 0 END) AS othersupplies2a11,
                                SUM(CASE WHEN mfopap = '2A1-2' THEN amount ELSE 0 END) AS othersupplies2a12,
                                SUM(CASE WHEN mfopap = '2A2' THEN amount ELSE 0 END) AS othersupplies2a2,
                                SUM(CASE WHEN mfopap = '3A1 PD997' THEN amount ELSE 0 END) AS othersupplies3a1
                            FROM orstbl2025
                            WHERE uacs = '50203990-00' 
                            AND ors_random LIKE :ors_random
                            AND ors_number LIKE :ors_month
                            AND isactive = 1
                            AND iscontinuing = 0") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_random' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['othersupplies1a1'] = $row['othersupplies1a1'];
    $data['othersupplies2a11'] = $row['othersupplies2a11'];
    $data['othersupplies2a12'] = $row['othersupplies2a12'];
    $data['othersupplies2a2'] = $row['othersupplies2a2'];
    $data['othersupplies3a1'] = $row['othersupplies3a1'];
}


// ================================================================================================================= //
// ================================================================================================================= //







// Set query results
echo json_encode($data);

$stnt = null;
$pdo = null;
