<?php
$servername = "localhost:3307"; 
$username = "root";
$password = ""; 
$dbname = "ss_project";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if (isset($_POST['submitinformation'])) {
    function escape($conn, $data) { return $conn->real_escape_string(trim($data)); }

    // --- SECTION A: Personal Data ---
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
    $pob_city = escape($conn, $_POST['city&province'] ?? '');
    $pob_country = escape($conn, $_POST['city&country'] ?? '');
    $email = escape($conn, $_POST['emailaddress']);
    $mobile = escape($conn, $_POST['mobilenumber']);

    if (isset($_POST['samehomeaddress'])) {
        $address = $pob_city;
    } else {
        $address = escape($conn, ($_POST['rmflrunit'] ?? '') . " " . ($_POST['streetname'] ?? '') . " " . ($_POST['citymuni'] ?? ''));
    }

    // 1. Insert Personal Data
    $sqlA = "INSERT INTO personal_data (lastname, firstname, middlename, suffix, dob, gender, civilstatus, civil_status_reason, tax_number, nationality, religion, pob_city, pob_country, home_address, mobile, email) 
             VALUES ('$lastname', '$firstname', '$middlename', '$suffix', '$dob', '$gender', '$civilstatus', '$civil_reason', '$tax', '$nat', '$rel', '$pob_city', '$pob_country', '$address', '$mobile', '$email')";

    if ($conn->query($sqlA) === TRUE) {
        $last_id = $conn->insert_id;

        // --- 2. Family Data ---
        $father = escape($conn, ($_POST['fatherfirstname'] ?? '') . " " . ($_POST['fatherlname'] ?? ''));
        $mother = escape($conn, ($_POST['motherfname'] ?? '') . " " . ($_POST['motherlname'] ?? ''));
        $spouse = escape($conn, ($_POST['spousefirstname'] ?? '') . " " . ($_POST['spouselname'] ?? ''));
        $conn->query("INSERT INTO family_data (reg_id, father_name, mother_name, spouse_name) VALUES ('$last_id', '$father', '$mother', '$spouse')");

        // --- 3. Beneficiaries Data (Fixing other_beneficiaries) ---
        $children = "";
        for($i=1; $i<=5; $i++) {
            if(!empty($_POST["childfirstname$i"])) {
                $children .= "Child $i: " . $_POST["childfirstname$i"] . " " . $_POST["childlastname$i"] . "; ";
            }
        }
        
        // Capturing "Other Beneficiary" section from HTML
        $other_bene = escape($conn, ($_POST['otherfirstname1'] ?? '') . " " . ($_POST['otherlastname1'] ?? '') . " (" . ($_POST['otherrelationship1'] ?? '') . ")");
        
        $conn->query("INSERT INTO beneficiaries_data (reg_id, children_info, other_beneficiaries) VALUES ('$last_id', '$children', '$other_bene')");

        // --- 4. Employment Certification (Fixing employment_type & cert_date) ---
        $profession = escape($conn, $_POST['profession/business'] ?? 'N/A');
        $earnings = !empty($_POST['monthlyearning']) ? escape($conn, $_POST['monthlyearning']) : escape($conn, $_POST['monthearn'] ?? '0');
        
        // Logic to determine type based on which section was filled
        $emp_type = !empty($_POST['monthearn']) ? 'OFW' : 'Self-Employed';
        $cert_date = escape($conn, $_POST['Ddate'] ?? date('Y-m-d')); // Uses the Certification date from Part 1-D

        $conn->query("INSERT INTO employment_certification (reg_id, monthly_earnings, profession, employment_type, cert_date) 
                      VALUES ('$last_id', '$earnings', '$profession', '$emp_type', '$cert_date')");

        // --- 5. SSS Internal Data (Fixing ss_number, msc_amount, processed_by) ---
        $bus_code = escape($conn, $_POST['businesscode'] ?? '');
        $ss_num = escape($conn, $_POST['SSSno'] ?? ''); // From Non-Working Spouse section
        $msc = escape($conn, $_POST['approvedmsc'] ?? '0');
        
        // Capturing the SSS processor name from Part 2
        // Note: This assumes the file input name is used for the signature; usually a printed name field is better
        $processed_by = "SSS Representative"; 

        $conn->query("INSERT INTO sss_internal_data (reg_id, business_code, ss_number, msc_amount, processed_by) 
                      VALUES ('$last_id', '$bus_code', '$ss_num', '$msc', '$processed_by')");

        echo "<script>alert('Record updated successfully!'); window.location='index.html';</script>";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>