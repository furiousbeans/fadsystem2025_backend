<?php
require("connect.php");



// READ ORS User
if(isset($_GET['readORSdiv'])){
    $data = array();

    if (!isset($_POST['uname'])) {
        http_response_code(400);
        echo json_encode(["error" => "Username is missing"]);
        exit;
    }

    $username = $_POST['uname'];

    try
    {
        $stnt = $pdo->prepare("SELECT DISTINCT 
  tb1.ors_random, 
  tb3.ors_number,
  pay.payeeName, 
  tb2.prj_title, 
  tb1.amount, 
  tb2.particulars, 
  tb1.uacs,
  tb1.mfopap,
  tb3.ors_numset,
  tb3.isapproved,
  tb3.datecreated
FROM orstbl2023 JOIN (SELECT ors_random, SUM(amount) as amount, CASE
    WHEN LENGTH(string_agg(uacs, ' / ')) <= 15 THEN string_agg(uacs, ' / ')
    ELSE LEFT(string_agg(uacs, ' / '), 15) || ' ...'
  END  AS uacs, CASE
    WHEN LENGTH(string_agg(mfopap, ' / ')) <= 15 THEN string_agg(mfopap, ' / ')
    ELSE LEFT(string_agg(mfopap, ' / '), 15) || ' ...'
  END  AS mfopap FROM orstbl2023 GROUP BY ors_random) AS tb1 ON tb1.ors_random = orstbl2023.ors_random
JOIN (SELECT ors_random, CASE
    WHEN LENGTH(string_agg(prj_title, ', ')) <= 30 THEN string_agg(prj_title, ', ')
    ELSE LEFT(string_agg(prj_title, ', '), 30) || ' ...'
  END AS prj_title, CASE
    WHEN LENGTH(string_agg(particulars, '     ')) <= 50 THEN string_agg(particulars, '     ')
    ELSE LEFT(string_agg(particulars, '     '), 50) || '     '
  END AS particulars FROM orstbl2023 GROUP BY ors_random) AS tb2 ON tb2.ors_random = orstbl2023.ors_random
JOIN (SELECT DISTINCT ors_random, ors_number, ors_numset, datecreated, CASE
        WHEN isapproved = 0 THEN 'Pending'
        ELSE 'Obligated'
    END AS isapproved FROM orstbl2023) AS tb3 ON tb3.ors_random = orstbl2023.ors_random
INNER JOIN payeedb as pay ON pay.payeeid = orstbl2023.payeeid
WHERE createdby = ? AND isactive = 1
ORDER BY ors_numset DESC") ;
            $params = array($username);
            $stnt->execute($params);
    }
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }
// 
    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = $row;
    }

    echo json_encode($data);

    $stnt = null;
    $pdo = null;
}
// READ ORS Admin
if(isset($_GET['readORSall'])){
    $data = array();

    try
    {
        $stnt = $pdo->prepare("SELECT DISTINCT 
  tb1.ors_random, 
  tb3.ors_number,
  pay.payeeName, 
  tb2.prj_title, 
  tb1.amount, 
  tb2.particulars, 
  tb1.uacs,
  tb1.mfopap,
  tb3.ors_numset,
  tb3.isapproved,
  tb3.datecreated
FROM orstbl2023 JOIN (SELECT ors_random, SUM(amount) as amount, CASE
    WHEN LENGTH(string_agg(uacs, ' / ')) <= 15 THEN string_agg(uacs, ' / ')
    ELSE LEFT(string_agg(uacs, ' / '), 15) || ' ...'
  END  AS uacs, CASE
    WHEN LENGTH(string_agg(mfopap, ' / ')) <= 15 THEN string_agg(mfopap, ' / ')
    ELSE LEFT(string_agg(mfopap, ' / '), 15) || ' ...'
  END  AS mfopap FROM orstbl2023 GROUP BY ors_random) AS tb1 ON tb1.ors_random = orstbl2023.ors_random
JOIN (SELECT ors_random, CASE
    WHEN LENGTH(string_agg(prj_title, ', ')) <= 30 THEN string_agg(prj_title, ', ')
    ELSE LEFT(string_agg(prj_title, ', '), 30) || ' ...'
  END AS prj_title, CASE
    WHEN LENGTH(string_agg(particulars, '     ')) <= 50 THEN string_agg(particulars, '     ')
    ELSE LEFT(string_agg(particulars, '     '), 50) || '     '
  END AS particulars FROM orstbl2023 GROUP BY ors_random) AS tb2 ON tb2.ors_random = orstbl2023.ors_random
JOIN (SELECT DISTINCT ors_random, ors_number, ors_numset, datecreated, CASE
        WHEN isapproved = 0 THEN 'Pending'
        ELSE 'Obligated'
    END AS isapproved FROM orstbl2023) AS tb3 ON tb3.ors_random = orstbl2023.ors_random
INNER JOIN payeedb as pay ON pay.payeeid = orstbl2023.payeeid
WHERE isactive = 1
ORDER BY ors_numset DESC") ;
            $stnt->execute();
    }
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }
// 
    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = $row;
    }

    echo json_encode($data);

    $stnt = null;
    $pdo = null;
}


//Read Payee
if(isset($_GET['readPayee'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT * FROM payeedb");
      $stnt->execute();
      // 
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['payeename'],"payeeid"=>$row['payeeid'],"payeeaddr"=>$row['payeeaddr'], "payeetin"=>$row['payeetin'], "payeeacctnum"=>$row['payeeacctnum']);
      // $response[] = array("payeeid"=>$row['payeeid'], "payeename"=> $row['payeename'])
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;
}

//Read UACS
if(isset($_GET['readUACS'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT * FROM uacstbl");
      $stnt->execute();
      // 
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['uacs_code'], "value"=> $row['uacs_code'], "testval"=>$row['uacs_code']);
      // $data[] = array("label"=> $row['uacs_code'] .  '     |     ' . $row['uacs_title'], "value"=> $row['uacs_code'], "testval"=>$row['uacs_code']);
      // $response[] = array("payeeid"=>$row['payeeid'], "payeename"=> $row['payeename'])
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;
}

//Read Project
if(isset($_GET['readProject'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment
FROM 
    projectstbl2025 p
JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");
      $stnt->execute();
      // 
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = $row;
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;
}

// 

//Read MFOPAP
if(isset($_GET['readMFOPAP'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT DISTINCT prj_fund, prj_title FROM projects ORDER BY prj_fund ASC");
    //   $stnt = $pdo->prepare("SELECT DISTINCT prj_fund FROM projects ORDER BY prj_fund ASC");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['prj_fund'],"value"=>$row['prj_fund'], "title"=>$row['prj_title']);
    //   $data[] = array("label"=> $row['prj_fund'],"value"=>$row['prj_fund']);
      // $data[] = array("label"=> $row['prj_title'],"value"=>$row['prj_id']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}

// Read Particulars
if (isset($_GET['readParticulars'])) {
    $project = $_GET['project'];
    $query = "SELECT lib_title FROM libtbl2025 WHERE project_name = '$project'";
    $result = mysqli_query($conn, $query);
    $data = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row['particulars'];
    }
    echo json_encode($data);
}

// LAST PAYEE ID
if(isset($_GET['getLastPayee'])){
    $last_payee = $pdo->prepare("SELECT payeeid FROM payeedb ORDER BY payeeid DESC LIMIT 1;");
    $last_payee->execute();
    while ($last_row = $last_payee->fetch(PDO::FETCH_ASSOC)){
      $lastpayee = $last_row["payeeid"]+1;
    }

    echo $lastpayee;
}


//Read ORS detail
if(isset($_GET['readORSpayee'])){
    $data = array();
    $refnum = $_POST['refnum'];
    try
    {
        $stnt = $pdo->prepare("SELECT ors.ors_id,
                                      pay.payeeName, 
                                      pay.payeeaddr, 
                                      pay.payeetin, 
                                      pay.payeeacctnum, 
                                      pay.payeeoffice,
                                      ors.uacs, 
                                      ors.isapproved, 
                                      ors.mfopap,
                                      ors.ors_numset, 
                                      ors.amount, 
                                      ors.ors_number,
                                      ors.particulars,
                                      ors.details,
                                      ors.lib_id,
                                      lib25.lib_title
                                FROM orstbl2023 as ors INNER JOIN payeedb AS pay ON pay.payeeid = ors.payeeid
LEFT JOIN libtbl2025 AS lib25 ON lib25.lib_id = ors.lib_id
WHERE ors.ors_random = ?") ;
        $params = array($refnum);
        $stnt->execute($params);
    }
  
  
  
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }
  
    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = $row;
    }
  
    echo json_encode($data);
  
    $stnt = null;
    $pdo = null;
  }

//   
  
if(isset($_GET['readORSpayee_particulars'])){
    $refnum = $_POST['refnum'];
    try
    {
        $stnt = $pdo->prepare("SELECT ors_id, particulars FROM orstbl2023 WHERE ors_random = ? ORDER BY ors_id ASC LIMIT 1") ;
        $params = array($refnum);
        $stnt->execute($params);
    }
  
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }
  
    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = $row;
    }
    echo json_encode($data);
  
    $stnt = null;
    $pdo = null;
  }


//   GET LIB Items
if (isset($_GET['getLibItems']) && isset($_POST['refnum'])) {
    $data = array();
    $refnum = $_POST['refnum'];
    try
    {
        $stnt = $pdo->prepare("SELECT
    t2.lib_id,
    t2.lib_title,
    t2.lib_allot,
    COALESCE(SUM(t1.amount), 0) AS total_amount,
    t2.lib_allot - COALESCE(SUM(t1.amount), 0) AS balance
FROM
    libtbl2025 t2
LEFT JOIN orstbl2023 t1 ON t2.lib_id = t1.lib_id
WHERE
    t2.prj_id = ?
GROUP BY
    t2.lib_id, t2.lib_title, t2.lib_allot") ;
        $params = array($refnum);
        $stnt->execute($params);
    }
  
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }
  
    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = $row;
    }
    echo json_encode($data);
  
    $stnt = null;
    $pdo = null;
}



if(isset($_GET['readProjectFunding'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT DISTINCT prj_fund FROM projects ORDER BY prj_fund ASC");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['prj_fund'],"value"=>$row['prj_fund']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}

if (isset($_GET['readLIBItemList'])) {
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT * FROM libtbl2025 WHERE prj_fundsource LIKE '2A1-106' ORDER BY lib_id ASC");
        $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['lib_title'],"value"=>$row['lib_id']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}


