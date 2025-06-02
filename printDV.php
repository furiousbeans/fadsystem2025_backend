<?php

include "connect.php";
include "dbconn.php";


if(isset($_GET['printDV'])){

// Initialize MPDF
// =================================================================================================== //
    require_once __DIR__ . '../vendor/autoload.php';
    $mpdf = new \Mpdf\Mpdf(['format' => [216, 330]]);
    $mpdf->autoPageBreak = false;
    $mpdf = new \Mpdf\Mpdf(['default_font' => 'arial']);
// =================================================================================================== //
// Initialize MPDF



// Get ORS number  /  Signatories
// =================================================================================================== //
    $orsidtest = $_POST["id"];
    $signame = $_POST["signame"];
    $sigposition = $_POST["sigposition"];
// =================================================================================================== //
// Get ORS number

// 

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
        $pg_acct = $pg_row["payeeacctnum"];
        $pg_div = $pg_row["division"];
        $pg_tin = $pg_row["tin"];

        $pg_partics = $pg_row["particulars"];
        $pg_mfo = $pg_row["mfopap"];
        $pg_uacs = $pg_row["uacs"];
        $pg_amount = $pg_row["amount"];

        $pg_tax2 = $pg_row["tax2"];
        $pg_tax5 = $pg_row["tax5"];
        $pg_tax1 = $pg_row["tax1"];
        $pg_tax10 = $pg_row["tax10"];

        $tax2 = $pg_tax2/100;
        $tax5 = $pg_tax5/100;
        $tax1 = $pg_tax1/100;
        $tax10 = $pg_tax10/100;


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
    <title>DV&nbsp;'.$orsidtest.'</title>
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
            <td id="headtbl_td" style="text-align: right;font-style: italic; font-family:Times, serif; font-size: 11">Appendix 32</td>
        </tr>
    </table>  

    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="width: 70%; border:1; border-width: 2px 0px 0px 2px; font-size: 13;"><center>Republic of the Philippines</center></td>
                <td style=" border:1; border-width: 2px 2px 0px 2px; font-weight: bold;">Fund Cluster:</td>
            </tr>
            <tr>
                <td style="width: 70%; border:1; border-width: 0px 0px 0px 2px;"><center>Department of Science and Technology</center></td>
                <td style=" border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width: 70%; font-size: 13; font-weight: bold; border:1; border-width: 0px 0px px 2px;"><center>SCIENCE EDUCATION INSTITUTE</center></td>
                <td style=" border:1; border-width: 0px 2px 2px 2px;"><b></b></td>
            </tr>
            <tr>
                <td style="width: 70%; font-size: 10; border:1; border-width: 0px 0px px 2px;"><center>1st and 2nd Level Science Heritage Bldg., DOST Compound, Bicutan, Taguig City </center></td>
                <td style=" border:1; border-width: 0px 2px 2px 2px;"><b>Date: </b></td>
            </tr>
            <tr>
                <td style="width: 70%; font-size: 13; font-weight: bold; border:1; border-width: 0px px 2px 2px;"><center>DISBURSEMENT  VOUCHER</center></td>
                <td style=" border:1; border-width: 0px 2px 2px 2px;"><b>DV No:</b></td>
            </tr>
        </tbody>
    </table>


    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr>
                <td style="height: 12px; width:12%; font-size: 13; border:1; border-width: 0px 2px 0px 2px;"><center>Mode of</center></td>
                <td style="height: 12px; width:3%; border: 1; border-width: 0px 0px 0px 0px;"></td>
                <td style="height: 12px; width:15%; border: 1; border-width: 0px 0px 0px 0px;"></td>
                <td style="height: 12px; border: 1; border-width: 0px 0px 0px 0px;"></td>
                <td style="height: 12px; width:12%; border: 1; border-width: 0px 0px 0px 0px;"></td>
                <td style="height: 12px; border: 1; border-width: 0px 2px 0px 0px;"></td>
            </tr>
            <tr>
                <td style="width:12%; font-size: 12; border:1; border-width: 0px 2px 0px 2px;"><center>Payment</center></td>
                <td style="width:3%; font-size: 12; border: 1; border-width: 0px 0px 0px 0px;"></td>
                <td style="width:15%; font-size: 12; border: 1; border-width: 0px 0px 0px 0px;"><span style="font-size:18px;">&#9633;</span>MDS Check</td>
                <td style="font-size: 12; border: 1; border-width: 0px 0px 0px 0px;"><span style="font-size:18px;">&#9633;</span>Commercial Check</td>
                <td style="width:12%; font-size: 12; border: 1; border-width: 0px 0px 0px 0px;"><span style="font-size:18px;">&#9633;</span>ADA</td>
                <td style="font-size: 12; border: 1; border-width: 0px 2px 0px 0px;"><span style="font-size:18px;">&#9633;</span>Others</td>
            </tr>
            <tr>
                <td style="height: 2px;width:12%; font-size: 9; border:1; border-width: 0px 2px 2px 2px;"><center>&nbsp;</center></td>
                <td style="height: 2px;width:3%; font-size: 9; border: 1; border-width: 0px 0px 2px 0px;"></td>
                <td style="height: 2px;width:15%; font-size: 9; border: 1; border-width: 0px 0px 2px 0px;"></td>
                <td style="height: 2px;font-size: 13; border: 1; border-width: 0px 0px 2px 0px;"></td>
                <td style="height: 2px;width:12%; font-size: 9; border: 1; border-width: 0px 0px 2px 0px;"></td>
                <td style="height: 2px;font-size: 9; border: 1; border-width: 0px 2px 2px 0px;"></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%;">
        <tbody>
            <tr>
                <td style="height: 25px; width:12%; font-size: 13; border:1; border-width: 0px 2px 2px 2px;" rowspan=2><center>Payee</center></td>
                <td style="height: 25px; width:49%; font-size: 13; border:1; border-width: 0px 2px 2px 0px;" rowspan=2>'.$spacer3.strtoupper($pg_payeename).'</td>
                <td style="height: 25px; width:18%; font-size: 13; border: 1; border-width: 0px 1px 0px 0px;">TIN/Employee No:</td>
                <td style="height: 30px; font-size: 13; border: 1; border-width: 0px 2px 0px 0px;">ORS/BURS No.</td>
            </tr>
            <tr>
                <td style="height: 20px; width:18%; font-size: 13; border: 1; border-width: 0px 1px 2px 0px;">'. $pg_tin .'</td>
                <td style="height: 20px; font-size: 13; border: 1; border-width: 0px 2px 2px 0px;">'. $pg_ors_number .'</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr style="height: 30px;">
                <td style="width:12%; font-size: 13; border:1; border-width: 0px 2px 2px 2px;" rowspan="2"><center>Address</center></td>
                <td rowspan="2" style="font-size: 13; border: 1; border-width: 0px 2px 2px 0px;">'.$spacer3.strtoupper($pg_adr).'</td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="height: 35px; border:1; border-width: 0px 2px 2px 2px;"><center>Particulars</center></td>
                <td style="width:12%; height: 35px; border:1; border-width: 0px 0px 2px 0px;"><center>Responsibility Center</center></td>
                <td style="width:12%; height: 35px; border:1; border-width: 0px 0px 2px 1px;"><center>MFO/PAP</center></td>
                <td style="width:15%; height: 35px; border:1; border-width: 0px 2px 2px 1px;"><center>Amount</center></td>
            </tr>
            <tr>
                <td style="height: 250px; border:1; border-width: 0px 2px 0px 2px; vertical-align: top;">';
    $html2 ='</td>
                <td style="width:12%; height: 250px; border:1; border-width: 0px 0px 0px 0px; vertical-align: top;"><center>';
    $html3 = '</center></td>
                <td style="width:12%; height: 250px; border:1; border-width: 0px 0px 0px 1px; vertical-align: top;"><center>';

    $html4 = '</center></td>
                <td style="width:15%; height: 250px; border:1; border-width: 0px 2px 0px 1px; vertical-align: top;"><center>';

    $html5 = '</center></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="height: 15px; border:1; border-width: 0px 2px 0px 2px;"><center></center></td>
                <td style="width:12%; height: 15px; border:1; border-width: 0px 0px 0px 0px;"><center></center></td>
                <td style="width:12%; height: 15px; border:1; border-width: 0px 0px 0px 1px;"><center></center></td>
                <td style="width:15%; height: 15px; border:1; border-width: 0px 2px 2px 1px;">Total</td>
            </tr>
            <tr>
                <td style="height: 25px; border:1; border-width: 0px 2px 2px 2px;"><center></center></td>
                <td style="width:12%; height: 25px; border:1; border-width: 0px 0px 2px 0px;"><center></center></td>
                <td style="width:12%; height: 25px; border:1; border-width: 0px 0px 2px 1px;"><center></center></td>
                <td style="width:15%; height: 25px; border:1; border-width: 0px 2px 2px 1px; font-size: 15; vertical-align: bottom;text-align:right;"><b>';

        $html6 ='</b></td>
            </tr>
        </tbody>
    </table>


    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:3%; height: 12px; border:1; border-width: 0px 2px 2px 2px;">A.</td>
                <td style="height: 12px; border:1; border-width: 0px 2px 0px 0px;">Certified:  Expenses/Cash Advance necessary,  lawful and  incurred under my direct supervision.</td>
            </tr>
            <tr>
                <td style="width:3%; height: 5px; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="height: 5px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:33%; height: 1px; border:1; border-width: 0px 0px 0px 2px;">&nbsp;</td>
                <td style="width:34%; height: 1px; border:1; border-width: 0px 0px 1px 0px;">&nbsp;</td>
                <td style="width:33%; height: 1px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width:33%; border:1; border-width: 0px 0px 0px 2px;">&nbsp;</td>
                <td style="width:34%; border:1; border-width: 0px 0px 0px 0px; font-size: 13;"><center><b>'.$signame.'</b></center></td>
                <td style="width:33%; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width:33%; border:1; border-width: 0px 0px 2px 2px;">&nbsp;</td>
                <td style="width:34%; border:1; border-width: 0px 0px 2px 0px;"><center>'.$sigposition.'</center></td>
                <td style="width:33%; border:1; border-width: 0px 2px 2px 0px;">&nbsp;</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:3%; height: 11px; border:1; border-width: 0px 2px 2px 2px;">B.</td>
                <td style="height: 11px; border:1; border-width: 0px 2px 1px 0px;">Accounting Entry:</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="height: 15px; border:1; border-width: 0px 1px 1px 2px;"><center>Account Title</center></td>
                <td style="width:12%; height: 15px; border:1; border-width: 0px 0px 1px 0px;"><center>UACS Code</center></td>
                <td style="width:12%; height: 15px; border:1; border-width: 0px 0px 1px 1px;"><center>Debit</center></td>
                <td style="width:15%; height: 15px; border:1; border-width: 0px 2px 1px 1px;"><center>Credit</center></td>
            </tr>
            <tr>
                <td style="height: 30px; border:1; border-width: 0px 1px 1px 2px;"></td>
                <td style="width:12%; height: 30px; border:1; border-width: 0px 0px 1px 0px;"></td>
                <td style="width:12%; height: 30px; border:1; border-width: 0px 0px 1px 1px;"></td>
                <td style="width:15%; height: 30px; border:1; border-width: 0px 2px 1px 1px;"></td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:3%; height: 18px; border:1; border-width: 0px 2px 1px 2px;">C.</td>
                <td style="width:58%; height: 18px; border:1; border-width: 0px 1px 1px 0px;">Certified: </td>
                <td style="width:3%; height: 18px; border:1; border-width: 0px 2px 1px 0px;">D.</td>
                <td style="height: 18px; border:1; border-width: 0px 2px 1px 0px;">Approved for payment</td>>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 0px 2px;">&nbsp;</td>
                <td style="width:58%; height: 14px; border:1; border-width: 0px 1px 0px 0px;"><span style="font-size:18px;">&#9633;</span>&nbsp;Cash available</td>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 0px 0px;">&nbsp;</td>
                <td style="height: 14px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 0px 2px;">&nbsp;</td>
                <td style="width:58%; height: 14px; border:1; border-width: 0px 1px 0px 0px;"><span style="font-size:18px;">&#9633;</span>&nbsp;Subject to Authority to Debit Account (when applicable)</td>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 0px 0px;">&nbsp;</td>
                <td style="height: 14px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 1px 2px;">&nbsp;</td>
                <td style="width:58%; height: 14px; border:1; border-width: 0px 1px 1px 0px;"><span style="font-size:18px;">&#9633;</span>&nbsp;Supporting documents complete and amount claimed </td>
                <td style="width:3%; height: 14px; border:1; border-width: 0px 0px 1px 0px;">&nbsp;</td>
                <td style="height: 14px; border:1; border-width: 0px 2px 1px 0px;">&nbsp;</td>
            </tr>
        </tbody>
    </table>


    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:10%; height: 28px; border:1; border-width: 0px 1px 1px 2px;">Signature</td>
                <td style="width:51%; height: 28px; border:1; border-width: 0px 1px 1px 0px;">&nbsp;</td>
                <td style="width:10%; height: 28px; border:1; border-width: 0px 1px 1px 0px;">Signature</td>
                <td style="height: 28px; border:1; border-width: 0px 2px 1px 0px;">&nbsp;</td>>
            </tr>
            <tr>
                <td style="width:10%; height: 24px; border:1; border-width: 0px 1px 1px 2px;">Printed Name</td>
                <td style="width:51%; height: 24px; border:1; border-width: 0px 1px 1px 0px; font-size: 13;"><b><center>SHEENA MAE K. BALA-OY</center></b></td>
                <td style="width:10%; height: 24px; border:1; border-width: 0px 1px 1px 0px;">Printed Name</td>
                <td style="height: 24px; border:1; border-width: 0px 2px 1px 0px; font-size: 13;"><center><b>JAYEEL S. CORNELIO</b></center></td>>
            </tr>
            <tr>
                <td style="width:10%; height: 14px; border:1; border-width: 0px 1px 1px 2px;" rowspan=2>Position</td>
                <td style="width:51%; height: 14px; border:1; border-width: 0px 1px 1px 0px;"><center>Accountant II</center></td>
                <td style="width:10%; height: 14px; border:1; border-width: 0px 1px 1px 0px;" rowspan=2>Position</td>
                <td style="height: 14px; border:1; border-width: 0px 2px 1px 0px;"><center>Director IV</center></td>>
            </tr>
            <tr>
                <td style="width:51%; height: 14px; border:1; border-width: 0px 1px 1px 0px;"><center>(Head, Accounting Unit/Authorized Representative)</center></td>
                <td style="height: 14px; border:1; border-width: 0px 2px 1px 0px;"><center>(Agency Head/Authorized Representative)</center></td>>
            </tr>

            <tr>
                <td style="width:10%; height: 18px; border:1; border-width: 0px 1px 2px 2px;">Date</td>
                <td style="width:51%; height: 18px; border:1; border-width: 0px 1px 2px 0px;"></td>
                <td style="width:10%; height: 18px; border:1; border-width: 0px 1px 2px 0px;">Date</td>
                <td style="height: 18px; border:1; border-width: 0px 2px 2px 0px;"></td>>
            </tr>
        </tbody>
    </table>



    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:3%; height: 18px; border:1; border-width: 0px 2px 2px 2px;">E.</td>
                <td style="width:70%; height: 18px; border:1; border-width: 0px 1px 1px 0px;">Receipt of Payment</td>
                <td style="height: 18px; border:1; border-width: 0px 2px 0px 0px;">JEV No.</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 11; width: 100%;">
        <tbody>
            <tr>
                <td style="width:10%; height: 22px; border:1; border-width: 0px 1px 0px 2px;">Check/ADA No:</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 0px 0px;">&nbsp;</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 0px 0px;">Date:</td>
                <td style="height: 22px; border:1; border-width: 0px 1px 0px 0px;">Bank Name & Account Number:</td>
                <td style="width:27%; height: 22px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>>
            </tr>
            <tr>
                <td style="width:10%; height: 22px; border:1; border-width: 0px 1px 1px 2px;">&nbsp;</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 1px 0px;">&nbsp;</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 1px 0px;">&nbsp;</td>
                <td style="height: 22px; border:1; border-width: 0px 1px 1px 0px;">'.strtoupper($pg_address).':&nbsp;'.$pg_acct.'</td>
                <td style="width:27%; height: 22px; border:1; border-width: 0px 2px 0px 0px;">&nbsp;</td>>
            </tr>

            <tr>
                <td style="width:10%; height: 22px; border:1; border-width: 0px 1px 1px 2px;">Signature:</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 1px 0px;">&nbsp;</td>
                <td style="width:20%; height: 22px; border:1; border-width: 0px 1px 1px 0px;">Date:</td>
                <td style="height: 22px; border:1; border-width: 0px 1px 1px 0px;">Printed Name:</td>>
                <td style="width:27%; height: 22px; border:1; border-width: 1px 2px 0px 0px;">Date:</td>
            </tr>
        </tbody>
    </table>

    <table cellspacing="0" style="font-size: 12; width: 100%;">
        <tbody>
            <tr>
                <td style="height: 28px; border:1; border-width: 0px 1px 2px 2px;">Official Receipt No. & Date/Other Documents</td>
                <td style="width:27%; height: 28px; border:1; border-width: 0px 2px 2px 0px;"></td>>
            </tr>
        </tbody>
    </table>



    <div style="position: absolute; top:490px; left: 35px;  z-index:9999;width: 180px;">
        <table cellspacing="0"  style="width: 100%; font-size:10px;">
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">Gross Amount</td>
                <td style="width: 25%; border:1; border-width:0px 0px 0px 0px; text-align:right">';

            $grossamt='</td>
            </tr>
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">1% Tax</td>
                <td style="width: 25%; border:1; border-width:0px 0px 0px 0px; text-align:right">';
                 

            $tbltax1='</td>
            </tr>
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">2% Tax</td>
                <td style="width: 25%; border:1; border-width:0px 0px 0px 0px; text-align:right">';
                 

            $tbltax2='</td>
            </tr>
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">5% Tax</td>
                <td style="width: 25%; border:1; border-width:0px 0px 0px 0px; text-align:right">';

            $tbltax5='</td>
            </tr>
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">10% Tax</td>
                <td style="width: 25%; border:1; border-width:0px 0px 0px 0px; text-align:right">';

            $tbltax10='</td>
            </tr>
            <tr>
                <td style="width: 75%; border:1; border-width:0px 0px 0px 0px;">Net Amount</td>
                <td style="width: 25%; border:1; border-width:1px 0px 0px 0px; text-align:right">';
            $tblnetamt='</td>
            </tr>
        </table>
    </div>



    <div style="position: absolute; top:50px; left: 140px;  z-index:9999;">
        <img src="seilogo.jpg" style="height:30px; width:30px;">
    </div>


</body>


</html>
';


$pg_query = "SELECT details
            FROM orstbl2023
            WHERE ors_random ='$orsidtest' LIMIT 1";

$pg_result = pg_query($pg_connection, $pg_query);

if (!$pg_result) {
    die("Error executing the query". pg_last_error($pg_connection));
}
while ($pg_row = pg_fetch_assoc($pg_result)) {
    $showdetails = $pg_row['details'] .'<br>';
}



$pg_query = "SELECT division FROM orstbl2023 WHERE ors_random ='$orsidtest'";

$pg_result = pg_query($pg_connection, $pg_query);

if (!$pg_result) {
    die("Error executing the query". pg_last_error($pg_connection));
}
while ($pg_row = pg_fetch_assoc($pg_result)) {
    $showdiv = $pg_row['division'];
}



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




$pg_query = "SELECT SUM(amount) as totalsum
            FROM orstbl2023
            WHERE ors_random ='$orsidtest'";

$pg_result = pg_query($pg_connection, $pg_query);

if (!$pg_result) {
    die("Error executing the query". pg_last_error($pg_connection));
}
while ($pg_row = pg_fetch_assoc($pg_result)) {
    $showtotalsum = number_format($pg_row['totalsum'],2);
    $grossamountval = $pg_row['totalsum'];
}



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

// 

// 2% tax
$pg_query = "SELECT tax2, tax5, tax1, tax10
            FROM orstbl2023
            WHERE ors_random ='$orsidtest'";

$pg_result = pg_query($pg_connection, $pg_query);

if (!$pg_result) {
    die("Error executing the query". pg_last_error($pg_connection));
}
while ($pg_row = pg_fetch_assoc($pg_result)) {
    $tax2 = $pg_row['tax2'];
    $tax5 = $pg_row['tax5'];
    $tax1 = $pg_row['tax1'];
    $tax10 = $pg_row['tax10'];
}


// net amount
$totaltax = $tax2comp + $tax5comp;
$netamount = $grossamountval;


$tax2per = $tax2/100;
$tax5per = $tax5/100;

$tax2comp = $netamount*$tax2per;
$tax5comp = $netamount*$tax5per;

$totaltax = $tax2comp + $tax5comp;

$nets = $netamount-$totaltax;
// =================================================================================================== //
// Print Form



$finalprint = $html1 . implode('<br>', $showpartics) .'<br>&nbsp;'.  $showdetails . $html2 . $showdiv. $html3 . implode('<br>', $showmfopap) . $html4 . implode('<br>', $showamount) . $html5 . number_format($nets,2) . $html6 . $showtotalsum;
// $finalprint = $html1 . implode('<br>', $showpartics) .'<br>&nbsp;'.  $showdetails . $html2 . $showdiv. $html3 . implode('<br>', $showmfopap) . $html4 . implode('<br>', $showamount) . $html5 . number_format($nets,2) . $html6 . $showtotalsum . $grossamt . number_format($tax1comp,2) . $tbltax1 . number_format($tax2comp,2) . $tbltax2 . number_format($tax5comp,2) . $tbltax5 . number_format($tax10comp,2) . $tbltax10 . number_format($nets,2) . $tblnetamt;
// $finalprint = $html1 . implode('<br>', $showpartics) .'<br>&nbsp;'.  $showdetails . $html2 . $showdiv. $html3 . implode('<br>', $showmfopap) . "<br><br>( <i>Continuing</i> )" . $html4 . implode('<br>', $showamount) . $html5 . number_format($nets,2) . $html6 . $showtotalsum . $grossamt . number_format($tax1comp,2) . $tbltax1 . number_format($tax2comp,2) . $tbltax2 . number_format($tax5comp,2) . $tbltax5 . number_format($tax10comp,2) . $tbltax10 . number_format($nets,2) . $tblnetamt;


// Print Document Function
// =================================================================================================== //
    $mpdf->AddPageByArray([
        // 'sheet-size' => array(210, 297),
        'sheet-size' => array(216, 278),
        'orientation' => 'P',
        'margin-left' => 6,
        'margin-right' => 8,
        'margin-top' => 2,
        'margin-bottom' => 2,
    ]);

    $mpdf->WriteHTML($finalprint);

    $mpdf->Output();
// =================================================================================================== //
// Print Document Function



}

?>  
 
<!--  -->