<?php

include "../connect.php";
include "../dbconn.php";


if(isset($_GET['printSAOB'])){

// Initialize MPDF
// =================================================================================================== //
    require_once __DIR__ . '../../vendor/autoload.php';
    $mpdf = new \Mpdf\Mpdf(['format' => [216, 330]]);
    $mpdf->autoPageBreak = false;
    $mpdf = new \Mpdf\Mpdf(['default_font' => 'arial']);
// =================================================================================================== //
// Initialize MPDF


// Get Month and Year
// =================================================================================================== //
    $saobmonth = $_POST["month"];
    $saobyear = $_POST["year"];

    if ($saobmonth == '01'){
        $monthname = 'January';
        $mon = '1';
    }elseif ($saobmonth == '02'){
        $monthname = 'February';
        $mon = '2';
    }elseif ($saobmonth == '03'){
        $monthname = 'March';
        $mon = '3';
    }elseif ($saobmonth == '04'){
        $monthname = 'April';
        $mon = '4';
    }elseif ($saobmonth == '05'){
        $monthname = 'May';
        $mon = '5';
    }elseif ($saobmonth == '06'){
        $monthname = 'June';
        $mon = '6';
    }elseif ($saobmonth == '07'){
        $monthname = 'July';
        $mon = '7';
    }elseif ($saobmonth == '08'){
        $monthname = 'August';
        $mon = '8';
    }elseif ($saobmonth == '09'){
        $monthname = 'September';
        $mon = '9';
    }elseif ($saobmonth == '10'){
        $monthname = 'October';
        $mon = '10';
    }elseif ($saobmonth == '11'){
        $monthname = 'November';
        $mon = '11';
    }elseif ($saobmonth == '12'){
        $monthname = 'December';
        $mon = '12';
    }
// =================================================================================================== //
// Get Month and Year


// Etc
// =================================================================================================== //
    $spacer3 = "&nbsp;&nbsp;&nbsp;";
    $spacer5 = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
    $spacer10 = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
// =================================================================================================== //
// Etc

include "printsaob_queries.php";








// Print Form Page 1
// =================================================================================================== //
$html1 = 
'      
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SAOB ' . $monthname . ' ' . $saobyear . '</title>
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
            <td id="headtbl_td" style="text-align: right; font-size: 8;">BAR No. 4</td>
        </tr>
    </table>  

    <table cellspacing="0" style="font-size: 8; width: 100%;">
        <tbody>
            <tr>
                <td style="width: 100%; border:0; font-size: 8;"><center>STATEMENT OF ALLOTMENT, OBLIGATION AND BALANCES</center></td>
            </tr>
            <tr>
                <td style="width: 100%; border:0;"><center>As of '.$monthname.'&nbsp;'.$saobyear.' </center></td>
            </tr>
        </tbody>
    </table>
    <br>
    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr>
                <td style="width: 12%;font-size: 8; border:0;">Department:</td>
                <td style="font-size: 8; border: 0;">DEPARTMENT OF SCIENCE AND TECHNOLOGY</td>
            </tr>
            <tr>
                <td style="font-size: 8; border:0;">Agency:</td>
                <td style="font-size: 8; border: 0;">SCIENCE EDUCATION INSTITUTE</td>
            </tr>
            <tr>
                <td style="font-size: 8; border:0;">Fund:</td>
                <td style="font-size: 8; border: 0;">101</td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" style="width: 100%; height: 40px;">
        <tbody>
            <tr>
                <td style=" background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 0px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center>Unobligated</center></td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style=" background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>P/A/P ALLOTMENT CLASS/</center></td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>UACS</center></td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>Allotment</center></td>
                <td style=" background-color: #7bd96a;width:20%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;" colspan=2><center>Obligations Incurred</center></td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Balance of</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center>Remarks</td>
            </tr>
            <tr>
                <td style=" background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>OBJECT OF EXPENDITURE</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Code</td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Received</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center>This Report</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"><center></center>To Date</td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Allotment</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style=" background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(1)</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center></td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(2)</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(3)</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 1px;"><center></center>(4)</td>
                <td style=" background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(5) = (2)-(4)</td>
                <td style=" background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 2px 2px;"><center></center>(5)</td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">A. Program</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">I. General Administration and Support</td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;1. General Management & Supervision</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>PERSONNEL SERVICES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Salaries and Wages - Regular</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50101010-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$salary1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Salaries and Wages</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary_allot1a1.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary1A1.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$salary1A1_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary1A1_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr><tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personnel Econ. Relief Allowance (PERA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102010-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pera1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Representation Allowance (RA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102020-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$rarara1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Transportation Allowance (TA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102030-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$tatata1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clothing / Uniform Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$clothing1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Productivity Enhancement Incentive</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102990-12</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$productivity1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year-End Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102140-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$yearend1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cash Gift</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102150-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$cashgift1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mid-Year Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102160-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$midyear1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pag-IBIG Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103020-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pagibig1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PhilHealth Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103030-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$philhealth1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Emp. Comp. Insurance Prem.</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$ecip1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Step Increment</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personnel Services (Unproggrammed Appro)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010000000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Personnel Benefits - Anniversary Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010299038</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Performance Based Bonus (PBB)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010201001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Personnel Benefits - SRI</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Collective Negotiation Agreement (CNA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center>&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loyalty</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terminal Leave Benefits</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp1A1_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp1A1.'</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalothercomp1A1_total.'</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp1A1_balance.'</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Magna Carta Benefits RA 8438</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta1A1_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta1A1.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$magnacarta1A1_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta1A1_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subsistence Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$subsistence1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Laundry Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$laundry1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hazard Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$hazard1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Longetivity Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$longetivity1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;1. Administration of Personnel Benefits</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Special Purpose Funds</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mutual Personnel Benefit Fund (MPBF) PBB</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010299014</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pension and Gratuity Funds</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Unproggrammed MPBF</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010403001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Monetization of Leave Credits</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr><tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Personal Services</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_1A1_allot.'&nbsp;&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_1A1.'</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalps_1A1_total.'</b></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_1A1_balance.'</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px; text-align:right"><b></b></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>MAINT. & OTHER OPERATING EXPENSES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Travelling Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201010-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$localtravel1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Foreign Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201020-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$foreigntravel1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Training & Scholarship Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICT Training Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020201001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$icttraining_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$icttraining1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$icttraining1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$icttraining1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Supplies & Materials Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office supplies Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$officesupplies1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office supplies Expenses - ICT Supplies</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeict_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeict1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$officeict1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeict1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fuel Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$fuel1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Supplies and Materials Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$othersupplies1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr><tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Utility Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Water Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020401000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$water_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$water1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$water1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$water1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Electricity Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020402000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$electricity1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr><tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Communication Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Postage and Courier Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020501000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$postage1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Mobile)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$mobile1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Landline)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$landline1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Internet Subscription Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020503000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$internet_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$internet1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$internet1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$internet1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            
            
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Repair & Maintenance</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Buildings & Other Structures Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021304001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$building_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$building1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$building1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$building1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Motor Vehicles</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021306001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$vehicle_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$vehicle1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$vehicle1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$vehicle1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office Equipment, Furnitures & Fixtures</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021305002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeequip_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeequip1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$officeequip1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officeequip1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Extraordinary Expenses and Misc. Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021003000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$extraordinary_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$extraordinary1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$extraordinary1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$extraordinary1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Professional Services</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Professional Services</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021199000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$professional_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$professional1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$professional1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$professional1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>General Services</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Janitorial Services</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021202000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$janitorial_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$janitorial1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$janitorial1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$janitorial1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Security Services</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021203000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$security_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$security1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$security1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$security1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other General Services</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021299099</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$general_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$general1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$general1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$general1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Taxes, Insurance Premiums and Other Fees</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fidelity Bond Premium</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021502000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fidelity_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fidelity1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$fidelity1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fidelity1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Insurance Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5021503000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$insurance_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$insurance1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$insurance1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$insurance1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Other Maint. & Operating Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICT Software Subscription</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5029907001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ictsoftware_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ictsoftware1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$ictsoftware1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ictsoftware1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Subscription Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5029907099</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersubscription_allot1a1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersubscription1A1.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$othersubscription1A1_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersubscription1A1_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Maintenance & Other Operating Expenses</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe_1A1_allot.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe1A1.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalmooe1A1_total.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe1A1_balance.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;Capital Outlay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Capital Outlay</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px; text-align:right"></td>
            </tr>
            <tr>
                <td style=" background-color: #fcdf03;width:32%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"><b>Total General Administration and Support</b></td>
                <td style=" background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"></td>
                <td style=" background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$totalgas_1A1_allot.'&nbsp;</b></td>
                <td style=" background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$totalgas_1A1.'&nbsp;</b></td>
                <td style=" background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 1px; text-align:right"><b>'.$totalgas_1A1_total.'&nbsp;</b></td>
                <td style=" background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$totalgas_1A1_balance.'&nbsp;</b></td>
                <td style=" background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 2px 2px 2px;"></td>
            </tr>
        </tbody>
    </table>
';

// =================================================================================================== //
// Print Form Page 1





// =================================================================================================== //
// =================================================================================================== //
// =================================================================================================== //





// Print Form Page 2
// =================================================================================================== //
$html2 = 
'
    <br>
    <br>
    <br>
    <table id="headingtbl">
        <tr>
                <td style="width:32%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
                <td style="width:13%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center>&nbsp;</center></td>
                <td style="width:13%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
            </tr>
    </table>  

    <table cellspacing="0" style="width: 100%; height: 40px; ">
        <tbody>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 0px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center>Unobligated</center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>P/A/P ALLOTMENT CLASS/</center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>UACS</center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>Allotment</center></td>
                <td style="background-color: #7bd96a;width:20%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;" colspan=2><center>Obligations Incurred</center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Balance of</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center>Remarks</td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>OBJECT OF EXPENDITURE</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Code</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Received</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center>This Report</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"><center></center>To Date</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Allotment</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(1)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(2)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(3)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 1px;"><center></center>(4)</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(5) = (2)-(4)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 2px 2px;"><center></center>(5)</td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">II. Operations</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;OO: Competitiveness of Filipinos in Science, Technology,</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engineering and Mathematics (STEM)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;Program 1: S&T Scholarship Program</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub-Program 1. Development and Administration of</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Science and Technology Scholarship</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Programs, Awards and Grants for</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Graduate Level</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>PERSONNEL SERVICES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Salaries and Wages - Regular</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010101001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$salary2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Salaries and Wages</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary_allot2a11.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary2a11.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$salary2a11_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary2a11_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personnel Econ. Relief Allowance (PERA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010201001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pera2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clothing / Uniform Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010204001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$clothing2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Productivity Enhancement Incentive</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010299012</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$productivity2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year-End Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010214001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$yearend2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cash Gift</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010215001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$cashgift2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mid-Year Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010216001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$midyear2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pag-IBIG Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010302001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pagibig2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PhilHealth Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010303001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$philhealth2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Emp. Comp. Insurance Prem.</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010304001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$ecip2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loyalty</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">-&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a11_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a11.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalothercomp2a11_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a11_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Magna Carta Benefits RA 8438</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a11_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a11.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$magnacarta2a11_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a11_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subsistence Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$subsistence2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Laundry Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$laundry2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hazard Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$hazard2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Longetivity Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$longetivity2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Personal Services</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a11_allot.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a11.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalps_2a11_total.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a11_balance.'&nbsp;</b></td>
                <td style="background-color: #fac175;idth:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>MAINT. & OTHER OPERATING EXPENSES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Travelling Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201010-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$localtravel2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Foreign Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201020-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$foreigntravel2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Training & Scholarship Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scholarship Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020202000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship_2a11_allot.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$totalscholarship2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ERDT</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$erdt2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ASTHRDP</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$asthrdp2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Science Education</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$cbpsme2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HRDP</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$hrdp2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Supplies & Materials Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office supplies Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$officesupplies2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fuel, Oil, and Lubricants Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020309000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$fuel2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Supplies & Materials Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020399000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$othersupplies2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Utility Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Electricity Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020402000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$electricity2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Communication Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Postage and Courier Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020501000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$postage2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Mobile)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$mobile2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Landline)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$landline2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Maintenance & Other Operating Expenses</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe_2a11_allot.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe2a11.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalmooe2a11_total.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe2a11_balance.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="background-color: #fcdf03;width:32%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"><b>Total Sub-Program 1</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"></td>
                <td style="background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11_allot.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 1px; text-align:right"><b>'.$total2a11_total.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11_balance.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 2px 2px 2px;"></td>
            </tr>
        </tbody>
    </table>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
';

// =================================================================================================== //
// Print Form Page 2





// =================================================================================================== //
// =================================================================================================== //
// =================================================================================================== //





// Print Form Page 3
// =================================================================================================== //
$html3 = 
'
    <br>
    <br>
    <br>
    <table id="headingtbl">
        <tr>
                <td style="width:32%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
                <td style="width:13%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center>&nbsp;</center></td>
                <td style="width:13%; font-size: 62; border:0;"><center></center></td>
                <td style="width:12%; font-size: 62; border:0;"><center></center></td>
            </tr>
    </table>  

    <table cellspacing="0" style="width: 100%; height: 40px; ">
        <tbody>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 0px 0px 0px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 2px 0px 0px 2px;"><center>Unobligated</center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 2px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>P/A/P ALLOTMENT CLASS/</center></td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>UACS</center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center>Allotment</center></td>
                <td style="background-color: #7bd96a;width:20%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;" colspan=2><center>Obligations Incurred</center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Balance of</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center>Remarks</td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>OBJECT OF EXPENDITURE</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Code</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Received</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center>This Report</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"><center></center>To Date</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"><center></center>Allotment</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"><center></center></td>
            </tr>
            <tr>
                <td style="background-color: #7bd96a;width:32%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(1)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center></td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(2)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(3)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 0px 2px 1px;"><center></center>(4)</td>
                <td style="background-color: #7bd96a;width:13%; font-size: 8; border:1; border-width: 0px 0px 2px 2px;"><center></center>(5) = (2)-(4)</td>
                <td style="background-color: #7bd96a;width:12%; font-size: 8; border:1; border-width: 0px 2px 2px 2px;"><center></center>(5)</td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">II. Operations</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;OO: Competitiveness of Filipinos in Science, Technology,</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engineering and Mathematics (STEM)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;Program 1: S&T Scholarship Program</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub-Program 1. Development and Administration of</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Science and Technology Scholarship</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Programs, Awards and Grants for</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Graduate Level</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 0px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 0px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>PERSONNEL SERVICES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Salaries and Wages - Regular</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010101001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$salary2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$salary2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Salaries and Wages</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary_allot2a12.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary2a12.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$salary2a12_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$salary2a12_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personnel Econ. Relief Allowance (PERA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5010201001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pera2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pera2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Representation Allowance (RA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102020-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$rarara2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$rarara2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Transportation Allowance (TA)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102030-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$tatata2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$tatata2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clothing / Uniform Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$clothing2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$clothing2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Productivity Enhancement Incentive</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102990-12</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$productivity2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$productivity2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year-End Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102140-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$yearend2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$yearend2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cash Gift</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102150-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$cashgift2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cashgift2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mid-Year Bonus</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50102160-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$midyear2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$midyear2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pag-IBIG Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103020-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$pagibig2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$pagibig2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PhilHealth Contributions</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103030-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$philhealth2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$philhealth2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Emp. Comp. Insurance Prem.</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$ecip2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$ecip2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Total Other Compensation</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a12_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a12.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalothercomp2a12_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalothercomp2a11.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Magna Carta Benefits RA 8438</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a12_allot.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a12.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$magnacarta2a12_total.'&nbsp;&nbsp;</b></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$magnacarta2a12_balance.'&nbsp;&nbsp;</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subsistence Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$subsistence2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$subsistence2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Laundry Allowance</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$laundry2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$laundry2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hazard Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$hazard2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hazard2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Longetivity Pay</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50103040-01</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$longetivity2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$longetivity2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Personal Services</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a12_allot.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a12.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalps_2a12_total.'&nbsp;</b></td>
                <td style="background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalps_2a12_balance.'&nbsp;</b></td>
                <td style="background-color: #fac175;idth:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>MAINT. & OTHER OPERATING EXPENSES</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Travelling Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201010-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$localtravel2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$localtravel2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Foreign Travel</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>50201020-00</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel_allot2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel2a12.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$foreigntravel2a12_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$foreigntravel2a12_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Training & Scholarship Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scholarship Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020202000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship_2a11_allot.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$totalscholarship2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$totalscholarship2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ERDT</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$erdt2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$erdt2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ASTHRDP</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$asthrdp2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$asthrdp2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Science Education</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$cbpsme2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$cbpsme2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HRDP</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center></center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$hrdp2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$hrdp2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Supplies & Materials Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office supplies Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020301002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$officesupplies2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$officesupplies2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fuel, Oil, and Lubricants Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020309000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$fuel2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$fuel2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Supplies & Materials Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020399000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$othersupplies2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$othersupplies2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Utility Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Electricity Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020402000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$electricity2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$electricity2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Communication Expenses</b></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"></td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Postage and Courier Expenses</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020501000</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$postage2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$postage2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Mobile)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502001</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$mobile2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$mobile2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone (Landline)</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><center>5020502002</center></td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline_allot2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline2a11.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right">'.$landline2a11_total.'&nbsp;&nbsp;</td>
                <td style="width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right">'.$landline2a11_balance.'&nbsp;&nbsp;</td>
                <td style="width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style=" background-color: #fac175;width:32%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"><b>Total Maintenance & Other Operating Expenses</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px;"></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe_2a11_allot.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe2a11.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 0px 0px 1px; text-align:right"><b>'.$totalmooe2a11_total.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:13%; font-size: 8; border:1; border-width: 1px 0px 0px 2px; text-align:right"><b>'.$totalmooe2a11_balance.'&nbsp;</b></td>
                <td style=" background-color: #fac175;width:12%; font-size: 8; border:1; border-width: 1px 2px 0px 2px;"></td>
            </tr>
            <tr>
                <td style="background-color: #fcdf03;width:32%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"><b>Total Sub-Program 1</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px;"></td>
                <td style="background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11_allot.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 0px 2px 1px; text-align:right"><b>'.$total2a11_total.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:13%; font-size: 8; border:1; border-width: 1px 0px 2px 2px; text-align:right"><b>'.$total2a11_balance.'&nbsp;</b></td>
                <td style="background-color: #fcdf03;width:12%; font-size: 8; border:1; border-width: 1px 2px 2px 2px;"></td>
            </tr>
        </tbody>
    </table>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
';

// =================================================================================================== //
// Print Form Page 3





// =================================================================================================== //
// =================================================================================================== //
// =================================================================================================== //






if($saobyear == '2026'){
    $finalprint = $html1 . $html2 . $html3 . '<br>' . $html1 . $html2; 
}
else{
    $finalprint = $html1 . $html2 . $html3 . $html1 . $html2; 
}


// $finalprint = $html1 . $html2 . $html3; 

// Print Document Function
// =================================================================================================== //
    $mpdf->AddPageByArray([
        'sheet-size' => array(216, 330),
        // 'sheet-size' => array(216, 278),
        'orientation' => 'P',
        'margin-left' => 10,
        'margin-right' => 10,
        'margin-top' => 20,
        'margin-bottom' => 10,
    ]);

    $mpdf->WriteHTML($finalprint);

    $mpdf->Output();
// =================================================================================================== //
// Print Document Function


}

?>	