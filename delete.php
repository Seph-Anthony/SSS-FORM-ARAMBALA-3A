<?php
require "db.php";

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    try {
        $sql = "DELETE FROM personal_data WHERE reg_id = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$id]);
        
        echo "<script>alert('User deleted successfully'); window.location='view_list.php';</script>";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
} else {
    header("Location: view_list.php");
} 