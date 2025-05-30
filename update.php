<?php
require("connect.php");


// if(isset($_GET['updateLIBrow'])){
//     $last_num = $pdo->prepare("SELECT orslib_id FROM orstbl_libitems ORDER BY orslib_id DESC LIMIT 1;");
//     $last_num->execute();
//     while ($last_row = $last_num->fetch(PDO::FETCH_ASSOC)){
//       $lastnum = $last_row["orslib_id"]+1;
//     }

//     $ors_id = $_POST['orsRowID'];
//     $lib_id = $_POST['libitemID'];
//     $ors_random = $_POST['orsRandomID'];

//     echo $ors_id;
//     echo "<br>";
//     echo $lib_id;
//     echo "<br>";
//     echo $ors_random;
//     echo "<br>";
//     echo $lastnum;

//     $stnt = $pdo->prepare("INSERT INTO orstbl_libitems(orslib_id, ors_id, lib_id, ors_random) VALUES (?,?,?,?)");
//         $params = array($lastnum, $ors_id, $lib_id, $ors_random);
//         $stnt -> execute($params);


//     if($stnt){
//         $result =  true;
//     } else{
//         $result = false;
//     }

//     echo json_encode($result);

// }





if(isset($_GET['approveORS'])){


    $last_numset = $pdo->prepare("SELECT orsnum_id, ors_numset FROM orsnum_tbl ORDER BY orsnum_id DESC LIMIT 1;");
    $last_numset->execute();
    while ($last_rowset = $last_numset->fetch(PDO::FETCH_ASSOC)){
      $lastnumset = $last_rowset["ors_numset"]+1;
      $lastid = $last_rowset["orsnum_id"]+1;
    }

    
    // $orsnumset = $_POST['orsnumset'];
    $refnum = $_POST['refnum'];
    $orsnumtxt = $_POST['orsnumtxt'];
    $dateApproved =date("Y-m-d H:i:s");


    $min = 1;
    $max = 9999;
    $orsRand = str_pad($lastnumset, strlen((string)$max), '0', STR_PAD_LEFT);
    $orsNum = date("Y-m-") . $orsRand;

    $result = false; 

    try{
    	$stnt1 = $pdo->prepare("UPDATE orstbl2023 SET ors_number=?, isapproved=?, dateapproved=? WHERE ors_random = ?;");
	    $params1 = array($orsnumtxt, 1, $dateApproved, $refnum);
	    $result1 = $stnt1->execute($params1);

	    $stnt2 = $pdo->prepare("INSERT INTO orsnum_tbl(orsnum_id, ors_refnum, orsnumber, ors_numset) VALUES (?,?,?,?);");
	    $params2 = array($lastid, $refnum, $orsnumtxt, $lastnumset);
	    $result2 = $stnt2->execute($params2);


	    if ($result1 && $result2) {
	        $result = true; 
	        echo json_encode($result);
	    }
    } catch (PDOException $e) {
	    echo "Error: " . $e->getMessage();
	}

};




if(isset($_GET['updateORSrow'])){
  $orsRowID = $_POST['orsRowID'];

  $init_uacs = $_POST['init_uacs'];
  $new_uacs = $_POST['new_uacs'];
  $init_mfopap = $_POST['init_mfopap'];
  $new_mfopap = $_POST['new_mfopap'];
  $amount = $_POST['amount'];

  $lib_id = $_POST['libitemID'];

  if($new_uacs=="undefined"){
    $new_uacs = $init_uacs;
  };

  if($new_mfopap=="undefined"){
    $new_mfopap = $init_mfopap;
  };

//   echo $lib_id;
//   echo "<br>";
//   echo $new_uacs;
//   echo "<br>";
//   echo $init_mfopap;
//   echo "<br>";
//   echo $new_mfopap;
//   echo "<br>";
//   echo $amount;
//   echo "<br>";


  try{
      $stnt = $pdo->prepare("UPDATE orstbl2023 SET lib_id=?, uacs=?, mfopap=?, amount=? WHERE ors_id = ?;");
	    $params = array($lib_id, $new_uacs, $new_mfopap, $amount, $orsRowID);
	    $result = $stnt->execute($params);

      if($stnt){
        $result =  true;
      } else{
        $result = false;
      }

      echo json_encode($result);


  } catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
};