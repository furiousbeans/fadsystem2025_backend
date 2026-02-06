<?php
require("../connect.php");


if(isset($_GET['newORS'])){
    $last_num = $pdo->prepare("SELECT ors_numset FROM orstbl2025 ORDER BY ors_numset DESC LIMIT 1;");
    $last_num->execute();
    while ($last_row = $last_num->fetch(PDO::FETCH_ASSOC)){
      $lastnum = $last_row["ors_numset"]+1;
    }

    $payeeid = $_POST['id'];
    $partics = $_POST['partics'];
    $uacs = $_POST['uacs'];
    $mfo = $_POST['mfo'];
    $amount = $_POST['amount'];
    $user = $_POST['user'];
    $division = $_POST['division'];
    $address = $_POST['address'];
    $tin = $_POST['tin'];
    $respcen = $_POST['respcen'];
    $libid = $_POST['libid'];
    $isAdmin = $_POST['isAdmin'];

    $curYear = date("Y");
    $max = 9999;

    $orsRand = str_pad($lastnum, strlen((string)$max), '0', STR_PAD_LEFT);
    $orsRandom = "DOC-".$curYear."-".$orsRand;

    $dateCreated =date("Y-m-d H:i:s");
    
// 

    $result = true;
    for ($i = 0; $i < count($uacs); $i++) {
        $particulars = $partics[$i];
        $uac = $uacs[$i];
        $amt = $amount[$i];
        $mfopap = $mfo[$i];
        $libid_input = $libid[$i];

        $stnt = $pdo->prepare("INSERT INTO orstbl2025(payeeid, ors_random, amount, particulars, datecreated, uacs, mfopap, ors_numset, createdby, division, payee_addr, payee_tin,lib_id, isadmin) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $params = array($payeeid, $orsRandom,  $amt, $particulars, $dateCreated, $uac, $mfopap, $lastnum, $user, $division, $address, $tin, $libid_input, $isAdmin);

        if (!$stnt->execute($params)) {
            $result = false; 
        }           
    }

    if ($result) {
        $logStmt = $pdo->prepare("
            INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
            VALUES (?, ?, ?, ?, ?)
        ");
        $actionText = "created";
        $logStmt->execute([$user, $actionText, $orsRandom, $dateCreated, "article"]);
    }
    
    header('Content-Type: application/json');
    echo json_encode($result);
}



if(isset($_GET['newLIBItem'])){
    // $last_num = $pdo->prepare("SELECT lib_id FROM libtbl2025 ORDER BY lib_id DESC LIMIT 1;");
    // $last_num->execute();
    // while ($last_row = $last_num->fetch(PDO::FETCH_ASSOC)){
    //   $lastnum = $last_row["lib_id"]+1;
    // }

    $prjid = $_POST['prjid'];
    $libitem = $_POST['libitem'];
    $libclass = $_POST['libclass'];
    $liballot = $_POST['liballot'];
    $year = $_POST['year'];
    $prjfund = $_POST['prjfund'];

    $stnt = $pdo->prepare("INSERT INTO libtbl2025(prj_id, lib_class, lib_title, lib_allot, prj_fundsource, year) VALUES (?,?,?,?,?,?)");
    $params = array( $prjid,  $libclass, $libitem, $liballot, $prjfund, $year);

    if (!$stnt->execute($params)) {
        $result = false; 
    }    
    else{
        $result = true; 
    }    

    header('Content-Type: application/json');
    echo json_encode($result);
}