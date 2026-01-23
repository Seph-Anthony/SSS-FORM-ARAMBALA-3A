<?php
require "db.php";
require "functions.php";


if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['submitinformation'])) {
    

    $finalAddress = "";
    if (isset($_POST['samehomeaddress'])) {
        $finalAddress = $_POST['city&province'] ?? '';
    } else {
        $parts = [
            $_POST['rmflrunit'] ?? '',
            $_POST['streetname'] ?? '',
            $_POST['citymuni'] ?? ''
        ];
        $finalAddress = implode(" ", array_filter($parts)); 
    }

    
    $_POST['final_address'] = $finalAddress;

 
    if (saveSSSRegistration($pdo, $_POST)) {
        echo "<script>alert('All data successfully linked and saved!'); window.location='index.php';</script>";
    } else {
        echo "<script>alert('Error: Could not save data. Check logs.'); window.history.back();</script>";
    }
} else {

    header("Location: index.php");
    exit;
}