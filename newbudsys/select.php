<?php
include("../connect.php");


if (isset($_POST['selectLIBitems'])) {
    $fundsource = $_POST['fundsource'];
    $currentyear = date('Y');

    $data = array();
    try
    {
        $stnt = $pdo->prepare("SELECT 
                                    l.lib_id,
                                    l.lib_title,
                                    l.lib_allot,
                                    (
                                        l.lib_allot - COALESCE((
                                            SELECT SUM(o.amount)
                                            FROM orstbl2025 o
                                            WHERE o.mfopap = ?
                                            AND o.lib_id = l.lib_id
                                            AND o.ors_random LIKE '%2026%'
                                            AND o.isapproved = 1
                                            AND o.isactive = 1
                                        ), 0)
                                    ) AS balance
                                FROM libtbl2025 AS l
                                WHERE l.prj_fundsource = ?
                                AND l.year = '2026'");
        $params = array($fundsource, $fundsource);
        $stnt->execute($params);
// 
    }
    catch (Exception $ex){
        die("Failed to run query". $ex);
    }

    http_response_code(200);
    while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
        $data[] = array("label"=> $row['lib_title'],"value"=>$row['lib_id'],"allot"=>$row['balance'],"lib_id"=>$row['lib_id']);
    }

    echo json_encode($data);

    $stnt = null;
    $pdo = null;
}



// =========== SELECT ALL ORS ============= //
if(isset($_GET['readORSall'])){
    $data = array();

    try
    {
        $stnt = $pdo->prepare("SELECT DISTINCT 
  tb1.ors_random, 
  tb1.isforwardedto_budget,
  tb1.receivedbybudget,
  tb3.ors_number,
  pay.payeeName, 
  tb1.amount, 
  tb2.particulars, 
  tb1.uacs,
  tb1.mfopap,
  tb3.ors_numset,
  tb3.isapproved,
  tb3.datecreated
FROM orstbl2025 JOIN (SELECT ors_random, isforwardedto_budget, receivedbybudget, SUM(amount) as amount, CASE
    WHEN LENGTH(string_agg(uacs, ' / ')) > 0 THEN string_agg(uacs, ' / ')
  END  AS uacs, CASE
    WHEN LENGTH(string_agg(mfopap, ' / ')) > 0 THEN string_agg(mfopap, ' / ')
  END  AS mfopap FROM orstbl2025 GROUP BY ors_random, isforwardedto_budget, receivedbybudget) AS tb1 ON tb1.ors_random = orstbl2025.ors_random
JOIN (SELECT ors_random,COALESCE(
        string_agg(particulars, ' / ') FILTER (WHERE trim(particulars) <> ''),
        ''
    ) AS particulars FROM orstbl2025 GROUP BY ors_random) AS tb2 ON tb2.ors_random = orstbl2025.ors_random
JOIN (SELECT DISTINCT ors_random, ors_number, ors_numset, datecreated, CASE
        WHEN isapproved = 0 THEN 'Pending'
        ELSE 'Obligated'
    END AS isapproved FROM orstbl2025) AS tb3 ON tb3.ors_random = orstbl2025.ors_random
INNER JOIN payeedb as pay ON pay.payeeid = orstbl2025.payeeid
WHERE isactive = 1
ORDER BY ors_numset DESC") ;
            $stnt->execute();
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
// =========== SELECT ALL ORS ============= //


// =========== SELECT USER CREATED ORS ============= //
if(isset($_GET['readORSUser'])){
    $data = array();

    if (!isset($_POST['uname'])) {
        http_response_code(400);
        echo json_encode(["error" => "Username is missing"]);
        exit;
    }

    $username = $_POST['uname'];

    // 

    try
    {
        $stnt = $pdo->prepare("SELECT DISTINCT 
  tb1.ors_random, 
  tb3.ors_number,
  pay.payeeName, 
  tb1.amount, 
  tb2.particulars, 
  tb1.uacs,
  tb1.mfopap,
  tb3.ors_numset,
  tb3.isapproved,
  tb3.datecreated
FROM orstbl2025 JOIN (SELECT ors_random, SUM(amount) as amount, CASE
    WHEN LENGTH(string_agg(uacs, ' / ')) > 0 THEN string_agg(uacs, ' / ')
  END  AS uacs, CASE
    WHEN LENGTH(string_agg(mfopap, ' / ')) > 0 THEN string_agg(mfopap, ' / ')
  END  AS mfopap FROM orstbl2025 GROUP BY ors_random) AS tb1 ON tb1.ors_random = orstbl2025.ors_random
JOIN (SELECT ors_random,COALESCE(
        string_agg(particulars, ' / ') FILTER (WHERE trim(particulars) <> ''),
        ''
    ) AS particulars FROM orstbl2025 GROUP BY ors_random) AS tb2 ON tb2.ors_random = orstbl2025.ors_random
JOIN (SELECT DISTINCT ors_random, ors_number, ors_numset, datecreated, CASE
        WHEN isapproved = 0 THEN 'Pending'
        ELSE 'Obligated'
    END AS isapproved FROM orstbl2025) AS tb3 ON tb3.ors_random = orstbl2025.ors_random
INNER JOIN payeedb as pay ON pay.payeeid = orstbl2025.payeeid
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
// =========== SELECT USER CREATED ORS ============= //


// 


// =========== SELECT ALL PAYEE ============= //
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
// =========== SELECT ALL PAYEE ============= //

// 

// =========== SELECT UACS ============= //
if(isset($_GET['readUACS'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT * FROM uacstbl");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['uacs_code'], "value"=> $row['uacs_code'], "testval"=>$row['uacs_code']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;
}
// =========== SELECT UACS ============= //

// 

// =========== SELECT MFOPAP ============= //
if(isset($_GET['readMFOPAP'])){
  $data = array();
  try
  {
    //   $stnt = $pdo->prepare("SELECT DISTINCT prj_fund FROM projectstbl2025 WHERE year = '2026' ORDER BY prj_fund ASC");
      $stnt = $pdo->prepare("SELECT DISTINCT prj_fundsource FROM libtbl2025 WHERE year = '2026' ORDER BY prj_fundsource ASC");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    //   $data[] = array("label"=> $row['prj_fund'],"value"=>$row['prj_fund']);
      $data[] = array("label"=> $row['prj_fundsource'],"value"=>$row['prj_fundsource']);
  }
  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}

// 

if(isset($_GET['readMFOPAP_addprj'])){
  $data = array();
  try
  { 
      $stnt = $pdo->prepare("SELECT DISTINCT prj_fundsource FROM libtbl2025 ORDER BY prj_fundsource ASC");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
    //   $data[] = array("label"=> $row['prj_fund'],"value"=>$row['prj_fund']);
      $data[] = array("label"=> $row['prj_fundsource'],"value"=>$row['prj_fundsource']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}
// =========== SELECT MFOPAP ============= //

// 

// =========== SELECT PROJECT / EDIT ORS ============= //
if(isset($_GET['readProjectFunding'])){
  $data = array();
  try
  {
    //   $stnt = $pdo->prepare("SELECT DISTINCT prj_fund FROM projects ORDER BY prj_fund ASC");
      $stnt = $pdo->prepare("SELECT DISTINCT prj_fundsource FROM libtbl2025 ORDER BY prj_fundsource ASC");
      $stnt->execute();
  }
  catch (Exception $ex){
      die("Failed to run query". $ex);
  }

  http_response_code(200);
  while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
      $data[] = array("label"=> $row['prj_fundsource'],"value"=>$row['prj_fundsource']);
  }

  echo json_encode($data);

  $stnt = null;
  $pdo = null;

}
// =========== SELECT PROJECT / EDIT ORS ============= //



// =========== Read ORS detail =========== // 
if(isset($_GET['readORSdetails'])){
    $data = array();
    $refnum = $_POST['refnum'];
    try

    // 
    
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
                                      ors.lib_id,
                                      lib25.lib_title,
                                      ors.createdby,
                                      ors.datecreated,
                                      ors.isforwardedto_budget,
                                      ors.receivedbybudget,
                                      ors.isadmin
                                FROM orstbl2025 as ors INNER JOIN payeedb AS pay ON pay.payeeid = ors.payeeid
                                LEFT JOIN libtbl2025 AS lib25 ON lib25.lib_id = ors.lib_id
                                WHERE ors.ors_random = ?
                                ORDER BY ors.ors_id ASC") ;
        $params = array($refnum);
        $stnt->execute($params);
    }
//   
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


    
// if(isset($_GET['readORSparticulars'])){
//     $refnum = $_POST['refnum'];
//     try
//     {
//         $stnt = $pdo->prepare("SELECT ors_id, particulars FROM orstbl2025 WHERE ors_random = ? ORDER BY ors_id ASC LIMIT 1") ;
//         $params = array($refnum);
//         $stnt->execute($params);
//     }
  
//     catch (Exception $ex){
//         die("Failed to run query". $ex);
//     }
  
//     http_response_code(200);
//     while ($row = $stnt->fetch(PDO::FETCH_ASSOC)){
//         $data[] = $row;
//     }
//     echo json_encode($data);
  
//     $stnt = null;
//     $pdo = null;
//   }
// 
// =========== Read ORS detail =========== // 


if(isset($_GET['readORSactivity'])){
    $data = array();
    $refnum = $_POST['refnum'];
    try
    {
        $stnt = $pdo->prepare("SELECT u.fname, u.userdiv, a.user_action, a.datelog, a.ors_random, a.log_icon 
                                from activitylog as a 
                                JOIN usertbl as u
                                ON a.user_id = u.username WHERE ors_random = ? ORDER BY log_id DESC") ;
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




//   =====================================================

if(isset($_GET['readProjectDiv'])){
    $data = array();

    $userdiv = $_POST['userdiv'];
    // 
    try
    {
        $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    p.year,
    SUM(l.lib_allot) AS total_allotment,

    (
        SELECT SUM(o.amount)
        FROM orstbl2025 o
        WHERE o.mfopap = p.prj_fund
          AND o.ors_random LIKE CONCAT('%', p.year, '%')
          AND o.isapproved = 1
          AND o.isactive = 1
    ) AS total_obli,

    (
        SUM(l.lib_allot) - (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.mfopap = p.prj_fund
              AND o.ors_random LIKE CONCAT('%', p.year, '%')
              AND o.isapproved = 1
              AND o.isactive = 1
        )
    ) AS balance,

    (
        (
            SELECT SUM(o.amount)
            FROM orstbl2025 o
            WHERE o.mfopap = p.prj_fund
              AND o.ors_random LIKE CONCAT('%', p.year, '%')
              AND o.isapproved = 1
              AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage

FROM projectstbl2025 p
LEFT JOIN libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = ?
    AND p.year IN ('2025', '2026')
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund, p.year
ORDER BY 
 p.year DESC,
    p.prj_fund;
") ;

// $stnt = $pdo->prepare("SELECT 
//     p.prj_id,
//     p.prj_div,
//     p.prj_title,
//     p.prj_fund,
//     SUM(l.lib_allot) AS total_allotment,
//     (
//         SELECT 
//             SUM(o.amount)
//         FROM 
//             orstbl2025 o
//         WHERE 
//             o.mfopap = p.prj_fund
// 			AND o.ors_random LIKE '%2025%'
//                 AND o.isapproved = 1
//                 AND o.isactive = 1
//     ) AS total_obli,
// 	(
//         SUM(l.lib_allot) - (
//             SELECT 
//                 SUM(o.amount)
//             FROM 
//                 orstbl2025 o
//             WHERE 
//                 o.mfopap = p.prj_fund
//                 AND o.ors_random LIKE '%2025%'
//                 AND o.isapproved = 1
//                 AND o.isactive = 1
//         )
//     ) AS balance,
//     (
//         (
//             SELECT 
//                 SUM(o.amount)
//             FROM 
//                 orstbl2025 o
//             WHERE 
//                 o.mfopap = p.prj_fund
//                 AND o.ors_random LIKE '%2025%'
//                 AND o.isapproved = 1
//                 AND o.isactive = 1
//         ) / NULLIF(SUM(l.lib_allot), 0)
//     ) * 100 AS balance_percentage
// FROM 
//     projectstbl2025 p
// LEFT JOIN 
//     libtbl2025 l ON p.prj_id = l.prj_id
// WHERE 
//     p.prj_div = ?
// GROUP BY 
//     p.prj_id, p.prj_div, p.prj_title, p.prj_fund
// ORDER BY p.prj_fund;") ;


            $params = array($userdiv);
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





if (isset($_GET['getProjTitle']) && isset($_POST['prjid'])) {
    $data = array();
    $prjid = $_POST['prjid'];
    try
    {
        $stnt = $pdo->prepare("SELECT
    prj_title, prj_div, year, prj_fund
FROM
    projectstbl2025
WHERE
    prj_id = ?") ;
        $params = array($prjid);
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



if (isset($_GET['getLibItems']) && isset($_POST['prjid'])) {
    $data = array();
    $prjid = $_POST['prjid'];
    try
    {
        $stnt = $pdo->prepare("SELECT
    t2.lib_id,
    t2.lib_title,
    t2.lib_allot,
    COALESCE(SUM(t1.amount), 0) AS total_amount,
    t2.lib_allot - COALESCE(SUM(t1.amount), 0) AS balance,
	ROUND(
        CASE 
            WHEN t2.lib_allot > 0 
            THEN ((t2.lib_allot - COALESCE(SUM(t1.amount), 0)) / t2.lib_allot) * 100
            ELSE 0
        END, 2
    ) AS remaining_percentage
FROM
    libtbl2025 t2
LEFT JOIN orstbl2025 t1 ON t2.lib_id = t1.lib_id
WHERE
    t2.prj_id = ?
GROUP BY
    t2.lib_id, t2.lib_title, t2.lib_allot
ORDER BY lib_id ASC") ;
        $params = array($prjid);
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



if(isset($_GET['readProjectFAD'])){
    $saobyear = $_POST['year'];
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment,
    (
        SELECT 
            SUM(o.amount)
        FROM 
            orstbl2025 o
        WHERE 
            o.mfopap = p.prj_fund
			AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
    ) AS total_obli,
	(
        SUM(l.lib_allot) - (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        )
    ) AS balance,
    (
        (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage
FROM 
    projectstbl2025 p
LEFT JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = 'FAD' AND p.year = ?
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");


        $year = $_POST['year']; 
        $orsrandom = $_POST['year']; 

        $stnt->execute(["%$orsrandom%", "%$orsrandom%", "%$orsrandom%", $year]);
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



if(isset($_GET['readProjectODD'])){
    $saobyear = $_POST['year'];
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment,
    (
        SELECT 
            SUM(o.amount)
        FROM 
            orstbl2025 o
        WHERE 
            o.mfopap = p.prj_fund
			AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
    ) AS total_obli,
	(
        SUM(l.lib_allot) - (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        )
    ) AS balance,
    (
        (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage
FROM 
    projectstbl2025 p
LEFT JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = 'OD/ODD' AND p.year = ?
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");

      $year = $_POST['year']; 
        $orsrandom = $_POST['year']; 

        $stnt->execute(["%$orsrandom%", "%$orsrandom%", "%$orsrandom%", $year]);
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

if(isset($_GET['readProjectSEID'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment,
    (
        SELECT 
            SUM(o.amount)
        FROM 
            orstbl2025 o
        WHERE 
            o.mfopap = p.prj_fund
			AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
    ) AS total_obli,
	(
        SUM(l.lib_allot) - (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        )
    ) AS balance,
    (
        (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage
FROM 
    projectstbl2025 p
LEFT JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = 'SEID' AND p.year = ?
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");

      $year = $_POST['year']; 
        $orsrandom = $_POST['year']; 

        $stnt->execute(["%$orsrandom%", "%$orsrandom%", "%$orsrandom%", $year]);
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



if(isset($_GET['readProjectSTHERPD'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment,
    (
        SELECT 
            SUM(o.amount)
        FROM 
            orstbl2025 o
        WHERE 
            o.mfopap = p.prj_fund
			AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
    ) AS total_obli,
	(
        SUM(l.lib_allot) - (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        )
    ) AS balance,
    (
        (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage
FROM 
    projectstbl2025 p
LEFT JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = 'STHERPD' AND p.year = ?
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");

      $year = $_POST['year']; 
        $orsrandom = $_POST['year']; 

        $stnt->execute(["%$orsrandom%", "%$orsrandom%", "%$orsrandom%", $year]);
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



if(isset($_GET['readProjectSTSD'])){
  $data = array();
  try
  {
      $stnt = $pdo->prepare("SELECT 
    p.prj_id,
    p.prj_div,
    p.prj_title,
    p.prj_fund,
    SUM(l.lib_allot) AS total_allotment,
    (
        SELECT 
            SUM(o.amount)
        FROM 
            orstbl2025 o
        WHERE 
            o.mfopap = p.prj_fund
			AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
    ) AS total_obli,
	(
        SUM(l.lib_allot) - (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        )
    ) AS balance,
    (
        (
            SELECT 
                SUM(o.amount)
            FROM 
                orstbl2025 o
            WHERE 
                o.mfopap = p.prj_fund
                AND o.ors_random LIKE ?
                AND o.isapproved = 1
                AND o.isactive = 1
        ) / NULLIF(SUM(l.lib_allot), 0)
    ) * 100 AS balance_percentage
FROM 
    projectstbl2025 p
LEFT JOIN 
    libtbl2025 l ON p.prj_id = l.prj_id
WHERE 
    p.prj_div = 'STSD' AND p.year = ?
GROUP BY 
    p.prj_id, p.prj_div, p.prj_title, p.prj_fund
ORDER BY p.prj_id;");

    $year = $_POST['year']; 
        $orsrandom = $_POST['year']; 

        $stnt->execute(["%$orsrandom%", "%$orsrandom%", "%$orsrandom%", $year]);
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