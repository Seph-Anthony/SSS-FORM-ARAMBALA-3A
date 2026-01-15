<?php
$servername = "localhost:3307"; 
$username = "root";
$password = ""; 
$dbname = "ss_project";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if (isset($_POST['submitinformation'])) {
    function escape($conn, $data) { return $conn->real_escape_string(trim($data)); }

    // SECTION A - Personal
    $lastname = escape($conn, $_POST['lastname']);
    $firstname = escape($conn, $_POST['firstname']);
    $middlename = escape($conn, $_POST['middlename']);
    $suffix = escape($conn, $_POST['suffix']);
    $dob = escape($conn, $_POST['dateofbirth']);
    $gender = escape($conn, $_POST['gender'] ?? '');
    $civilstatus = escape($conn, $_POST['civilstatus'] ?? '');
    $civil_reason = escape($conn, $_POST['reasonforother'] ?? '');
    $tax = escape($conn, $_POST['taxnumber']);
    $nat = escape($conn, $_POST['nationality']);
    $rel = escape($conn, $_POST['religion']);
    $pob_city = escape($conn, $_POST['city&province']);
    $pob_country = escape($conn, $_POST['city&country']);
    $email = escape($conn, $_POST['emailaddress']);
    $mobile = escape($conn, $_POST['mobilenumber']);

    if (isset($_POST['samehomeaddress'])) {
        $address = $pob_city;
    } else {
        $address = escape($conn, $_POST['rmflrunit'] . " " . $_POST['streetname'] . " " . $_POST['citymuni']);
    }

    // 1. Insert into Main Table first
    $sqlA = "INSERT INTO personal_data (lastname, firstname, middlename, suffix, dob, gender, civilstatus, civil_status_reason, tax_number, nationality, religion, pob_city, pob_country, home_address, mobile, email) 
             VALUES ('$lastname', '$firstname', '$middlename', '$suffix', '$dob', '$gender', '$civilstatus', '$civil_reason', '$tax', '$nat', '$rel', '$pob_city', '$pob_country', '$address', '$mobile', '$email')";

    if ($conn->query($sqlA) === TRUE) {
        $last_id = $conn->insert_id; // This links everything!

        // 2. Family Data
        $father = escape($conn, $_POST['fatherfirstname'] . " " . $_POST['fatherlname']);
        $mother = escape($conn, $_POST['motherfname'] . " " . $_POST['motherlname']);
        $spouse = escape($conn, $_POST['spousefirstname'] . " " . $_POST['spouselname']);
        $conn->query("INSERT INTO family_data (reg_id, father_name, mother_name, spouse_name) VALUES ('$last_id', '$father', '$mother', '$spouse')");

        // 3. Beneficiaries (Normalizing 5 children fields)
        $children = "";
        for($i=1; $i<=5; $i++) {
            if(!empty($_POST["childfirstname$i"])) {
                $children .= "Child $i: " . $_POST["childfirstname$i"] . " " . $_POST["childlastname$i"] . "; ";
            }
        }
        $conn->query("INSERT INTO beneficiaries_data (reg_id, children_info) VALUES ('$last_id', '$children')");

        // 4. Employment
        $earnings = escape($conn, $_POST['monthlyearning'] ?? $_POST['monthearn'] ?? '0');
        $profession = escape($conn, $_POST['profession/business'] ?? 'N/A');
        $conn->query("INSERT INTO employment_certification (reg_id, monthly_earnings, profession) VALUES ('$last_id', '$earnings', '$profession')");

        // 5. Part 2
        $bus_code = escape($conn, $_POST['businesscode'] ?? '');
        $conn->query("INSERT INTO sss_internal_data (reg_id, business_code) VALUES ('$last_id', '$bus_code')");

        echo "<script>alert('Normalized & Linked successfully!'); window.location='index.html';</script>";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>