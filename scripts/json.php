<?php
    ini_set('display_errors', 1);
    error_reporting(E_ALL);

    header("Access-Control_ALlow_Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    require_once("config.php");

    // return all results
    $getContent = getAll('tbl_projects');
    $label = "proj_name";

    $grpResult = "";
    $grpResult .= "{";
    if(!is_string($getContent)) {
        while($conResult = mysqli_fetch_assoc($getContent)) {
            $jsonResult = "\"".$conResult[$label]."\"".": ".json_encode($conResult, JSON_PRETTY_PRINT);
            $grpResult .= $jsonResult.",";
        }
        $grpResult = substr($grpResult, 0, -1);
        $grpResult .= "}";
        echo $grpResult;

    }else{
        echo $getContent;
    }


?>