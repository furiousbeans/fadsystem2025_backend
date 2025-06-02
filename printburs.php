<?php

include "connect.php";
include "dbconn.php";


if(isset($_GET['printBURS'])){

// 

// Initialize MPDF
// =================================================================================================== //
    require_once __DIR__ . '../vendor/autoload.php';
    $mpdf = new \Mpdf\Mpdf(['format' => [216, 330]]);
    $mpdf->autoPageBreak = false;
    $mpdf = new \Mpdf\Mpdf(['default_font' => 'arial']);
// =================================================================================================== //
// Initialize MPDF



// Get ORS number
// =================================================================================================== //
    $orsidtest = $_POST["id"];
    $signame = $_POST["signame"];
    $sigposition = $_POST["sigposition"];
// =================================================================================================== //
// Get ORS number



// Queries
// =================================================================================================== //
    $pg_query = "SELECT * 
        FROM orstbl2023 AS o
        INNER JOIN payeedb AS p ON o.payeeid = p.payeeid
        WHERE o.ors_random ='$orsidtest' LIMIT 1";
    $pg_result = pg_query($pg_connection, $pg_query);
    
    if (!$pg_result) {
        die("Error executing the query". pg_last_error($pg_connection));
    }

    while ($pg_row = pg_fetch_assoc($pg_result)) {
        $pg_payeename = $pg_row["payeename"];
        $pg_ors_number = $pg_row["ors_number"];
        $pg_office = "";
        // $pg_office = $pg_row["office"];
        $pg_address = $pg_row["payeeaddr"];
        $pg_adr = $pg_row["address"];
        $pg_div = $pg_row["division"];

        $pg_partics = $pg_row["particulars"];
        $pg_mfo = $pg_row["mfopap"];
        $pg_uacs = $pg_row["uacs"];
        $pg_amount = $pg_row["amount"];
    } 

// =================================================================================================== //
// Queries


// 


// Etc
// =================================================================================================== //
    $spacer3 = "&nbsp;&nbsp;&nbsp;";
    $spacer5 = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
    $spacer10 = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
// =================================================================================================== //
// Etc


// Print Form
// =================================================================================================== //
$html1 = 
'      
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>BURS&nbsp;'.$orsidtest.'</title>
    <style>
        * {
            font-family: Arial, Helvetica, sans-serif;
        }    

        input.largerCheckbox {
            width: 10px;
            height: 10px;
        }
    </style>
</head>

<body style="width:320px;">

    <table id="headingtbl" style="width: 100%;">
        <tr id="headingtbl_tr">
            <td id="headtbl_td" style="text-align: right;font-style: italic; font-family:Times, serif;">Appendix 14</td>
        </tr>
    </table>  

    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="width: 70%; border:1; border-width: 2px 0px 0px 2px; font-size: 15; font-weight: bold;"><center>BUDGET UTILIZATION REQUEST AND STATUS</center></td>
                <td style=" border:1; border-width: 2px 2px 0px 2px; font-weight: bold;">Serial No.:</td>
            </tr>
            <tr>
                <td style="width: 70%; border:1; border-width: 0px 0px 0px 2px;"><center>Department of Science and Technology</center></td>
                <td style=" border:1; border-width: 0px 2px 0px 2px;">Date:</td>
            </tr>
            <tr>
                <td style="width: 70%; font-size: 13; font-weight: bold; border:1; border-width: 0px px 2px 2px;"><center>SCIENCE EDUCATION INSTITUTE</center></td>
                <td style=" border:1; border-width: 0px 2px 2px 2px;"><b>Fund Cluster:</b></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr style="height: 30px;">
                <td style="width:15%; font-size: 13; border:1; border-width: 0px 0px 1px 2px;" rowspan="2"><center>Payee</center></td>
                <td rowspan="2" style="font-size: 15; border: 1; border-width: 0px 2px 1px 1px;">'.$spacer3.strtoupper($pg_payeename).'</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr style="height: 30px;">
                <td style="width:15%; font-size: 13; border:1; border-width: 0px 0px 1px 2px;" rowspan="2"><center>Office</center></td>
                <td rowspan="2" style="font-size: 15; border: 1; border-width: 0px 2px 1px 1px;">'.$spacer3.strtoupper($pg_office).'</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr style="height: 30px;">
                <td style="width:15%; font-size: 13; border:1; border-width: 0px 0px 2px 2px;" rowspan="2"><center>Address</center></td>
                <td rowspan="2" style="font-size: 15; border: 1; border-width: 0px 2px 2px 1px;">'.$spacer3.strtoupper($pg_adr).'</td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="width:15%; height: 35px; border:1; border-width: 0px 0px 2px 2px;"><center>Responsibility Center</center></td>
                <td style="width:35%; height: 35px; border:1; border-width: 0px 0px 2px 1px;"><center>Particulars</center></td>
                <td style="width:20%; height: 35px; border:1; border-width: 0px 0px 2px 1px;"><center>MFO/PAP</center></td>
                <td style="width:15%; height: 35px; border:1; border-width: 0px 0px 2px 1px;"><center>UACS Object Code</center></td>
                <td style="width:15%; height: 35px; border:1; border-width: 0px 2px 2px 1px;"><center>Amount</center></td>
            </tr>
            <tr>
                <td style="width:15%; height: 400px; border:1; border-width: 0px 0px 0px 2px; vertical-align: top;"><center>';
                $pg_query = "SELECT responcenter FROM orstbl2023 WHERE ors_random ='$orsidtest' ORDER BY ors_id ASC";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                $showrespcent = array();
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showrespcent[] = $pg_row['responcenter'] .'<br>';
                }
                $htmlres='</center></td>
                <td style="width:35%; height: 400px; border:1; border-top: 0; border-bottom: 0; border-right: 0; vertical-align: top;">';

                $pg_query = "SELECT * 
                            FROM orstbl2023
                            WHERE ors_random ='$orsidtest'
                            ORDER BY ors_id ASC";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                $showpartics = array();
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showpartics[] = $pg_row['particulars'] .'<br>';
                }

                $html2 ='</td>
                <td style="width:20%; height: 400px; border:1; border-top: 0; border-bottom: 0; border-right: 0; vertical-align: top;"><center>';

                $pg_query = "SELECT * 
                            FROM orstbl2023
                            WHERE ors_random ='$orsidtest'
                            ORDER BY ors_id ASC";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                $showmfopap = array();
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showmfopap[] = $pg_row['mfopap'] .'<br>';
                }

                $html3 = '</center></td>
                <td style="width:15%; height: 400px; border:1; border-top: 0; border-bottom: 0; border-right: 0; vertical-align: top;"><center>';


                $pg_query = "SELECT * 
                            FROM orstbl2023
                            WHERE ors_random ='$orsidtest' ORDER BY ors_id ASC";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                $showuacs = array();
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showuacs[] = $pg_row['uacs'] .'<br>';
                }

                $html4='</center></td>
                <td style="width:15%; height: 400px; border:1; border-width: 0px 2px 0px 1px; vertical-align: top;overflow: wrap"><center>';

                $pg_query = "SELECT * 
                            FROM orstbl2023
                            WHERE ors_random ='$orsidtest' 
                            ORDER BY ors_id ASC";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                $showamount = array();
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showamount[] = number_format($pg_row['amount'],2) .'<br>';
                }


                $html5 = '</center></td>
            </tr>

            <tr>
                <td style="width:15%; border:1; border-width: 0px 0px 2px 2px;"></td>
                <td style="width:35%; border:1; border-width: 0px 0px 2px 1px;"></td>
                <td style="width:20%; border:1; border-width: 0px 0px 2px 1px;"></td>
                <td style="width:15%; border:1; border-width: 1px 0px 2px 1px; text-align:right;">TOTAL</td>
                <td style="width:15%; border:1; border-width: 0px 2px 2px 1px; vertical-align: bottom;text-align:right; font-weight:bold; font-size: 14px;overflow: wrap">';

                $pg_query = "SELECT SUM(amount) as totalsum
                            FROM orstbl2023
                            WHERE ors_random ='$orsidtest'";

                $pg_result = pg_query($pg_connection, $pg_query);
                
                if (!$pg_result) {
                    die("Error executing the query". pg_last_error($pg_connection));
                }
                while ($pg_row = pg_fetch_assoc($pg_result)) {
                    $showtotalsum = number_format($pg_row['totalsum'],2);
                }

                $html6='</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="width:4%; height: 35px; border:1; border-width: 0px 0px 1px 2px">A.</td>
                <td style="width:42%; height: 35px; border:1; border-top: 0;border-right: 0;border-bottom: 0; border-right: 0;"></td>
                <td style="width:4%; height: 35px; border:1; border-top: 0;border-left: 0;border-bottom: 0; border-right: 0;"></td>
                <td style="width:4%; height: 35px; border:1; border-width: 0px 0px 1px 2px">B.</td>
                <td style="width:42%; height: 35px;  border:1; border-top: 0;border-right: 0;border-bottom: 0;"></td>
                <td style="width:4%; height: 35px; border:1; border-width: 0px 2px 0px 0px"></td>
            </tr>
            <tr>
                <td style="width:4%; font-size:11px; height: 50px; border:1; border-width: 0px 0px 0px 2px"></td>
                <td style="width:42%; font-size:11px; height: 50px; border:1; border-width: 0px 0px 0px 0px"><b>Certified:&nbsp;</b>Charges to appropriation/allotment are necessary, lawful and under my direct supervision; and supporting documents are valid , proper and legal</td>
                <td style="width:4%; font-size:11px; height: 50px; border:1; border-width: 0px 0px 0px 0px"></td>
                <td style="width:4%; font-size:11px; height: 50px; border:1; border-width: 0px 0px 0px 2px"></td>
                <td style="width:42%; font-size:11px; height: 50px;  border:1; border-top: 0;border-right: 0;border-left: 0;border-bottom: 0; border-right: 0; vertical-align: top;"><b>Certified:&nbsp;</b>Allotment available and obligated for the purpose/ adjustment necessary as indicated above</td>
                <td style="width:4%; font-size:11px; height: 50px; border:1; border-width: 0px 2px 0px 0px"></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px">Signature</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-top: 0;border-left: 0; border-right: 0;"></td>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px">Signature</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 2px 1px 0px"></td>
            </tr>

            <tr>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px">Printed Name</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 1px 0px;"><center>'.strtoupper($signame).'</center></td>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px">Printed Name</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 2px 1px 0px"><center>MARY ANN A. MANILA</center></td>
            </tr>
            <tr>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px;">Position</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 1px 0px;"><center>'.$sigposition.'</center></td>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px;">Position</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 2px 1px 0px;"><center>Administrative Officer V, Budget Officer III</center></td>
            </tr>
            <tr>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px;">Date</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 1px 0px;"></td>
                <td style="width:10%; font-size:11px; height: 28px; border:1; border-width: 0px 0px 0px 2px;">Date</td>
                <td style="width:40%; font-size:11px; height: 28px; border:1; border-width: 0px 2px 1px 0px;"></td>
            </tr>
            <tr>
                <td style="width:10%; font-size:11px; height: 12px; border:1; border-width: 0px 0px 2px 2px;"></td>
                <td style="width:40%; font-size:11px; height: 12px; border:1; border-width: 0px 0px 2px 0px;"></td>
                <td style="width:10%; font-size:11px; height: 12px; border:1; border-width: 0px 0px 2px 2px;"></td>
                <td style="width:40%; font-size:11px; height: 12px; border:1; border-width: 0px 2px 2px 0px;"></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="width:4%; font-size:11px; height: 14px; border:1; border-width: 0px 0px 2px 2px;"></td>
                <td style="width:96%; font-size:11px; height: 14px; border:1; border-width: 0px 2px 2px 0px;"></td>
            </tr>
            <tr>
                <td style="width:4%; font-size:12px; height: 30px; border:1; border-width: 0px 1px 2px 2px;"><b>C.</b></td>
                <td style="width:96%; font-size:12px; height: 30px; border:1; border-width: 0px 2px 2px 0px;"><center><b>STATUS OF OBLIGATION</b></center></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="width:40%; font-size:12px; height: 30px; border:1; border-width: 0px 1px 0px 2px;" colspan=3><center><b>Reference</b></center></td>
                <td style="width:60%; font-size:12px; height: 30px; border:1; border-width: 0px 2px 0px 1px;" colspan=5><center><b>Amount</b></center></td>
            </tr>
            <tr>
                <td style="width: 10%; border:1; border-width: 2px 0px 0px 2px; font-size:12px; height: 30px;"><center> </center></td>    
                <td style="width: 15%; border:1; border-width: 2px 0px 0px 1px; font-size:12px; height: 30px;"><center> </center></td>
                <td style="width: 15%; border:1; border-width: 2px 1px 0px 1px; font-size:12px; height: 30px;"><center> </center> </td>
                <td style="width: 12%; border:1; border-width: 2px 0px 0px 1px; font-size:12px; height: 30px;"><center> </center></td>
                <td style="width: 12%; border:1; border-width: 2px 0px 0px 1px; font-size:12px; height: 30px;"><center></center></td>
                <td style="width: 14%; border:1; border-width: 2px 1px 0px 1px; font-size:12px; height: 30px;"><center> </center></td>
                <td style="width: 22%; border:1; border-width: 2px 2px 1px 1px; font-size:12px; height: 30px;"colspan=2><center>Balance</center></td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="width: 10%; border:1; border-width: 0px 0px 0px 2px; font-size:12px; height: 20px;"><center>Date</center></td>    
                <td style="width: 15%; border:1; border-width: 0px 0px 0px 1px; font-size:12px; height: 20px;"><center>Particulars</center></td>
                <td style="width: 15%; border:1; border-width: 0px 1px 0px 1px; font-size:12px; height: 20px;"><center>ORS/JEV/Check/</center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 0px 1px; font-size:12px; height: 20px;"><center>Obligation</center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 0px 1px; font-size:12px; height: 20px;"><center>Payable</center></td>
                <td style="width: 14%; border:1; border-width: 0px 1px 0px 1px; font-size:12px; height: 20px;"><center>Payment</center></td>
                <td style="width: 10%; border:1; border-width: 0px 1px 0px 1px; font-size:12px; height: 20px;"><center>Not Yet</center></td>
                <td style="width: 12%; border:1; border-width: 0px 2px 0px 0px; font-size:12px; height: 20px;"><center>Due and</center></td>
            </tr>
            <tr>
                <td style="width: 10%; border:1; border-width: 0px 0px 0px 2px; font-size:12px; height: 20px;"><center></center></td>    
                <td style="width: 15%; border:1; border-width: 0px 0px 0px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 15%; border:1; border-width: 0px 1px 0px 1px; font-size:12px; height: 20px;"><center>ADA/TRA No.</center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 1px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 1px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 14%; border:1; border-width: 0px 1px 1px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 10%; border:1; border-width: 0px 1px 1px 1px; font-size:12px; height: 20px;"><center>Due</center></td>
                <td style="width: 12%; border:1; border-width: 0px 2px 1px 0px; font-size:12px; height: 20px;"><center>Demandable</center></td>
            </tr>
            <tr>
                <td style="width: 10%; border:1; border-width: 0px 0px 2px 2px; font-size:12px; height: 20px;"><center></center></td>    
                <td style="width: 15%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 15%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 20px;"><center></center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 20px;"><center>(a)</center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 20px;"><center>(b)</center></td>
                <td style="width: 14%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 20px;"><center>(c)</center></td>
                <td style="width: 10%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 20px;"><center>(a-b)</center></td>
                <td style="width: 12%; border:1; border-width: 0px 2px 2px 0px; font-size:12px; height: 20px;"><center>(b-c)</center></td>
            </tr>
            <tr>
                <td style="width: 10%; border:1; border-width: 0px 0px 2px 2px; font-size:12px; height: 100px;"><center></center></td>    
                <td style="width: 15%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 15%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 12%; border:1; border-width: 0px 0px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 14%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 10%; border:1; border-width: 0px 1px 2px 1px; font-size:12px; height: 100px;"><center></center></td>
                <td style="width: 12%; border:1; border-width: 0px 2px 2px 0px; font-size:12px; height: 100px;"><center></center></td>
            </tr>
        </tbody>
    </table>

</body>



</html>
';

// =================================================================================================== //
// Print Form



$finalprint = $html1 . implode('<br>', $showrespcent) . $htmlres . implode('<br>', $showpartics) . $html2 . implode('<br>', $showmfopap) . $html3 . implode('<br>', $showuacs) . $html4 . implode('<br>', $showamount) . $html5 . $showtotalsum . $html6;


// Print Document Function
// =================================================================================================== //
    $mpdf->AddPageByArray([
        'sheet-size' => array(210, 297),
        'orientation' => 'P',
        'margin-left' => 7,
        'margin-right' => 7,
        'margin-top' => 2,
        'margin-bottom' => 7,
    ]);

    $mpdf->WriteHTML($finalprint);

    $mpdf->Output();
// =================================================================================================== //
// Print Document Function



}

?>  
 
