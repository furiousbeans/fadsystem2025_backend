<?php
require("connect.php");

$saobmonth = $_POST['month'];
$saobyear = $_POST['year'];

// $where = "";
// for ($i=1; $i <= $mon; $i++) {
//     $where .= " ors_number LIKE '".str_pad($i,2,"0", STR_PAD_LEFT)."-%' ";
//     if($i < $mon){
//         $where .= " OR ";
//     }
// }


$data = [];


//  ==========================  ALLOTMENT  ==========================  //
// SALARY 1A1
try
{
    $stnt = $pdo->prepare("SELECT allotment as sal1a1_allot FROM allotment WHERE uacs = '50101010-01' AND allotgroup = '1A1' AND allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_year' => $saobyear
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal1a1_allot'] = $row['sal1a1_allot'];
}

// PERA 1A1
try
{
    $stnt = $pdo->prepare("SELECT allotment as pera1a1_allot FROM allotment WHERE uacs = '50102010-01' AND allotgroup = '1A1' AND allotyear = :ors_year") ;
    $stnt->execute([
        ':ors_year' => $saobyear
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera1a1_allot'] = $row['pera1a1_allot'];
}

//  ==========================  ALLOTMENT  ==========================  //



//  ==========================  MONTHLY OBLIGATION  ==========================  //
// SALARY 1A1
try
{
    $stnt = $pdo->prepare("SELECT SUM(amount) as sal1a1 
        FROM orstbl2023 
        WHERE iscontinuing = 0 
            AND isactive = 1 
            AND uacs = '50101010-01' 
            AND mfopap = '1A1' 
            AND ors_number LIKE :ors_month 
            AND ors_random LIKE :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['sal1a1'] = $row['sal1a1'];
}

// PERA 1A1
try
{
    $stnt = $pdo->prepare("SELECT SUM(amount) as pera1a1 
        FROM orstbl2023 
        WHERE iscontinuing = 0 
            AND isactive = 1 
            AND uacs = '50102010-01' 
            AND mfopap = '1A1' 
            AND ors_number LIKE :ors_month 
            AND ors_random LIKE :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['pera1a1'] = $row['pera1a1'];
}

// RA 1A1
try
{
    $stnt = $pdo->prepare("SELECT SUM(amount) as ra1a1 
        FROM orstbl2023 
        WHERE iscontinuing = 0 
            AND isactive = 1 
            AND uacs = '50102020-00' 
            AND mfopap = '1A1' 
            AND ors_number LIKE :ors_month 
            AND ors_random LIKE :ors_year") ;
    $stnt->execute([
        ':ors_month' => $saobmonth . '-%',
        ':ors_year' => 'DOC-' . $saobyear . '-%'
    ]);;
}
catch (Exception $ex){
    die("Failed to run query". $ex);
}
http_response_code(200);
while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    $data['ra1a1'] = $row['ra1a1'];
}
//  ==========================  MONTHLY OBLIGATION  ==========================  //

//  ==========================  TOTAL OBLIGATION  ==========================  //
// SALARY 1A1

//  ==========================  TOTAL OBLIGATION  ==========================  //



// PASS RESULTS ON DATA
echo json_encode($data);

$stnt = null;
$pdo = null;

