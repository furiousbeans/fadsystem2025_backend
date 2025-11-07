<?php
require("../connect.php");


if(isset($_GET['updateORSrow'])){
  $orsRowID = $_POST['orsRowID'];
  $orsRandom = $_POST['orsrandom'];
  $userid = $_POST['userid'];
  $particulars = $_POST['particulars'];
  $init_uacs = $_POST['init_uacs'];
  $new_uacs = $_POST['new_uacs'];
  $init_mfopap = $_POST['init_mfopap'];
  $new_mfopap = $_POST['new_mfopap'];
  $init_lib = $_POST['init_lib'];
  $new_lib = $_POST['new_lib'];
  $amount = $_POST['amount'];


  if($new_uacs=="undefined"){
    $new_uacs = $init_uacs;
  };

  if($new_mfopap=="undefined"){
    $new_mfopap = $init_mfopap;
  };

  if($new_lib=="undefined"){
    $new_lib = $init_lib;
  };

  $dateCreated =date("Y-m-d H:i:s");
// 
  try{
        $stnt = $pdo->prepare("UPDATE orstbl2025 SET particulars=?, lib_id=?, uacs=?, mfopap=?, amount=? WHERE ors_id = ?;");
	    $params = array($particulars, $new_lib, $new_uacs, $new_mfopap, $amount, $orsRowID);
	    $result = $stnt->execute($params);

      if($stnt){
        $logStmt = $pdo->prepare("
            INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
            VALUES (?, ?, ?, ?, ?)
        ");
        $actionText = "updated";
        $logStmt->execute([$userid, $actionText, $orsRandom, $dateCreated, "edit"]);
            if($logStmt){
            $result =  true;
            }
      } else{
        $result = false;
      }

      header('Content-Type: application/json');
      echo json_encode($result);


  } catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
};


if(isset($_GET['forwardORS'])){
  $orsRandom = $_POST['orsrandom'];
  $userid = $_POST['userid'];
  $forw_unit = $_POST['forw_unit'];

  
  $dateCreated =date("Y-m-d H:i:s");

  try{
    $stnt = $pdo->prepare("UPDATE orstbl2025 SET isforwardedto_budget=? WHERE ors_random = ?;");
    $params = array(1, $orsRandom);
    $result = $stnt->execute($params);

    if($stnt){
        $logStmt = $pdo->prepare("
            INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
            VALUES (?, ?, ?, ?, ?)
        ");
        $actionText = "forwarded to " . $forw_unit;
        $logStmt->execute([$userid, $actionText, $orsRandom, $dateCreated, "send"]);
            if($logStmt){
            $result =  true;
            }
    }
    else{
        $result = false;
    }
    header('Content-Type: application/json');
    echo json_encode($result);
  }
  catch (PDOException $e){

  }
};


if(isset($_GET['receiveORS'])){
  $orsRandom = $_POST['orsrandom'];
  $userid = $_POST['userid'];
  
  $dateCreated =date("Y-m-d H:i:s");

  try{
    $stnt = $pdo->prepare("UPDATE orstbl2025 SET receivedbybudget=? WHERE ors_random = ?;");
    $params = array(1, $orsRandom);
    $result = $stnt->execute($params);

    if($stnt){
        $logStmt = $pdo->prepare("
            INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
            VALUES (?, ?, ?, ?, ?)
        ");
        $actionText = "received";
        $logStmt->execute([$userid, $actionText, $orsRandom, $dateCreated, "receive"]);
            if($logStmt){
            $result =  true;
            }
    }
    else{
        $result = false;
    }

    header('Content-Type: application/json');
    echo json_encode($result);
  }
  catch (PDOException $e){

  }
};

// 

if(isset($_GET['numberORS'])){
  $orsRandom = $_POST['orsrandom'];
  $userid = $_POST['userid'];
  $orsnumberinput = $_POST['orsnumberinput'];
  $orsremarksinput = $_POST['orsremarksinput'];

  $dateCreated =date("Y-m-d H:i:s");
  $yearNow = date("Y");

  try{
      // // ✅ Step 1: Check if ORS number already exists this year
      // $check = $pdo->prepare("
      //     SELECT COUNT(*) 
      //     FROM orstbl2025 
      //     WHERE ors_number = ? 
      //       AND isactive = 1 
      //       AND EXTRACT(YEAR FROM datecreated) = ?
      // ");
      // $check->execute([$orsnumberinput, $yearNow]);
      // $exists = $check->fetchColumn();

      // if ($exists > 0) {
      //     echo json_encode([
      //         'status' => 'error',
      //         'message' => 'ORS Number already exists for this year.'
      //     ]);
      //     exit;
      // }

      // // ✅ Step 2: Proceed with update if not existing
      // $stnt = $pdo->prepare("
      //     UPDATE orstbl2025 
      //     SET ors_number = ?, isapproved = ?  
      //     WHERE ors_random = ?
      // ");
      // $result = $stnt->execute([$orsnumberinput, 1, $orsRandom]);

      // if ($result) {
      //     // ✅ Step 3: Log activity if update succeeded
      //     $logStmt = $pdo->prepare("
      //         INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
      //         VALUES (?, ?, ?, ?, ?)
      //     ");
      //     $actionText = "updated with number " . $orsnumberinput;
      //     $logStmt->execute([$userid, $actionText, $orsRandom, $dateCreated, "edit"]);

      //     echo json_encode([
      //         'status' => 'success',
      //         'message' => 'ORS Number updated successfully.'
      //     ]);
      // } else {
      //     echo json_encode([
      //         'status' => 'error',
      //         'message' => 'Failed to update ORS record.'
      //     ]);
      // }


    $stnt = $pdo->prepare("UPDATE orstbl2025 SET ors_number=?, isapproved = ?  WHERE ors_random = ?;");
    $params = array($orsnumberinput,1, $orsRandom);
    $result = $stnt->execute($params);

    if($stnt){
        $logStmt = $pdo->prepare("
            INSERT INTO activitylog (user_id, user_action, ors_random, datelog, log_icon)
            VALUES (?, ?, ?, ?, ?)
        ");
        $actionText = "updated with number " . $orsnumberinput;
        $logStmt->execute([$userid, $actionText, $orsRandom, $dateCreated, "edit"]);
            if($logStmt){
            $result =  true;
            }
    }
    else{
        $result = false;
    }

    header('Content-Type: application/json');
    echo json_encode($result);
  }
  catch (PDOException $e){
    echo json_encode([
        'status' => 'error',
        'message' => $e->getMessage()
    ]);
  }
};

// 