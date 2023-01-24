<?php
    ini_set('display_errors', 1);
    error_reporting(E_ALL);

    function getAll($tbl) {
        include("connect.php");
        $queryAll = "SELECT * FROM {$tbl}";
        $runAll = mysqli_query($link, $queryAll);
        if($runAll){
            return $runAll;
        }else{
            $error = "oops";
            return $error;
        }
        mysqli_close($link);
    }

?>