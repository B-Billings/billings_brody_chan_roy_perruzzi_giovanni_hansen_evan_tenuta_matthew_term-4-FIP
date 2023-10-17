<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

function getAll($tbl)
{
    include("connect.php");
    $queryAll = "SELECT * FROM {$tbl}";
    $runAll = mysqli_query($link, $queryAll);
    if ($runAll) {
        return $runAll;
    } else {
        $error = "oops";
        mysqli_close($link); // Close the database connection before returning
        return $error;
    }
}
