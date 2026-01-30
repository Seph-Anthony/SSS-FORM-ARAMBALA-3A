<?php
require "db.php";

// Fetch required fields based on your index.js validation
$sql = "SELECT reg_id, lastname, firstname, dob, gender, civilstatus, nationality, email, mobile FROM personal_data ORDER BY reg_id DESC";
$stmt = $pdo->query($sql);
$registrants = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SSS Registrants List</title>
    <script src="https://kit.fontawesome.com/ed5caa5a8f.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="view_list.css">
</head>
<body>

    <h2>SSS REGISTERED MEMBERS</h2>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Date of Birth</th>
                    <th>Sex</th>
                    <th>Civil Status</th>
                    <th>Nationality</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($registrants as $row): ?>
                <tr class="trheader">
                    <td><?= htmlspecialchars($row['lastname'] . ", " . $row['firstname']) ?></td>
                    <td><?= htmlspecialchars($row['dob']) ?></td>
                    <td><?= htmlspecialchars($row['gender']) ?></td>
                    <td><?= htmlspecialchars($row['civilstatus']) ?></td>
                    <td><?= htmlspecialchars($row['nationality']) ?></td>
                    <td><?= htmlspecialchars($row['mobile']) ?></td>
                    <td><?= htmlspecialchars($row['email']) ?></td>
                    <td class="actions-cell">
                        <a href="index.php?edit_id=<?= $row['reg_id'] ?>" class="btn btn-edit"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
                        <a href="delete.php?id=<?= $row['reg_id'] ?>" 
                           class="btn btn-delete" 
                           onclick="return confirm('Delete this record?')"><i class="fa-solid fa-delete-left"></i>Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

     <a href="index.php" class="btn btn-add"><i class="fa-solid fa-plus"></i> Add New Registrant</a>
    </div>

</body>
</html>