<?php
require("connect.php");


// ADD 

if(isset($_GET['newPayee'])){
    $last_payee = $pdo->prepare("SELECT payeeid FROM payeedb ORDER BY payeeid DESC LIMIT 1;");
    $last_payee->execute();
    while ($last_row = $last_payee->fetch(PDO::FETCH_ASSOC)){
      $lastpayee = $last_row["payeeid"]+1;
    }

// 

    $payeename = $_POST['payeename'];
    $payeeacct = $_POST['payeeacct'];
    $payeebank = $_POST['payeebank'];
    $payeetin = $_POST['payeetin'];

    $stnt = $pdo->prepare("INSERT INTO payeedb(payeeid, payeename, payeeacctnum, payeeaddr, payeetin) VALUES (?,?,?,?,?)");
        $params = array($lastpayee, $payeename, $payeeacct, $payeebank, $payeetin);
        $stnt -> execute($params);


    if($stnt){
        $result =  true;
    } else{
        $result = false;
    }

    echo json_encode($result);

} 


if(isset($_GET['newORS'])){

    $last_num = $pdo->prepare("SELECT ors_numset FROM orstbl2023 ORDER BY ors_numset DESC LIMIT 1;");
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

    $min = 1;
    $max = 1000;

    $curYear = date("Y");

    $orsnumber = rand($min, $max);
    $orsRand = str_pad($lastnum, strlen((string)$max), '0', STR_PAD_LEFT);
    $orsRandom = "DOC-".$curYear."-".$orsRand;



    $dateCreated =date("Y-m-d H:i:s");

    for ($i = 0; $i < count($uacs); $i++) {
        $particulars = $partics[$i];
        $uac = $uacs[$i];
        $amt = $amount[$i];
        $mfopap = $mfo[$i];
        $respcenter = $respcen[$i];

        // echo "payee id: " . $payeeid . "<br>";
        // echo "refnum: " . $orsRandom . "<br>";
        // echo "uacs: " . $uac . "<br>";
        // echo "mfo: " . $mfopap . "<br>";
        // echo "amount: " . $amt . "<br>";
        // echo "particulars: " . $particulars . "<br>";
        // echo "details: " . $details . "<br>";
        // echo "user: " . $user . "<br>";
        // echo "division: " . $division . "<br>";
        // echo "datenow: " . $dateCreated . "<br>";
        // echo "lastnum: " . $lastnum . "<br>";
        // echo "address: " . $address . "<br>";
        // echo "tin: " . $tin . "<br>";
        // echo "tax2: " . $tax2 . "<br>";
        // echo "tax5: " . $tax5 . "<br>";
        // echo "resp: " . $repcen . "<br>";

        $stnt = $pdo->prepare("INSERT INTO orstbl2023(payeeid, ors_random, amount, particulars, datecreated, uacs, mfopap, ors_numset, createdby, division, address, tin,  responcenter) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $params = array($payeeid, $orsRandom,  $amt, $particulars, $dateCreated, $uac, $mfopap, $lastnum, $user, $division, $address, $tin,  $respcenter);
        $stnt -> execute($params);


        if($stnt){
            $result =  true;
        } else{
            $result = false;
        }

    }
        echo json_encode($result);

}