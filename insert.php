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