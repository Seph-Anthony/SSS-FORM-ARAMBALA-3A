<?php
require "db.php";
require "functions.php";

// Check if form was submitted
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['submitinformation'])) {
    
    // Process Address Logic
    $finalAddress = "";
    if (isset($_POST['samehomeaddress'])) {
        $finalAddress = $_POST['city&province'] ?? '';
    } else {
        $parts = [
            $_POST['rmflrunit'] ?? '',
            $_POST['streetname'] ?? '',
            $_POST['citymuni'] ?? ''
        ];
        $finalAddress = implode(" ", array_filter($parts)); // Combines and removes extra spaces
    }

    // Pass the calculated address into the data array
    $_POST['final_address'] = $finalAddress;

    // Execute the main saving function
    if (saveSSSRegistration($pdo, $_POST)) {
        echo "<script>alert('All data successfully linked and saved!'); window.location='index.html';</script>";
    } else {
        echo "<script>alert('Error: Could not save data. Check logs.'); window.history.back();</script>";
    }
} else {
    // Redirect if they try to access store.php directly
    header("Location: index.php");
    exit;
}