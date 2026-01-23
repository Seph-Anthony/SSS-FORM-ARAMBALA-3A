<?php
require "db.php";

function saveSSSRegistration(PDO $pdo, array $data) {
    try {
        $pdo->beginTransaction();

      //    PERSONAL DATA NGA TABLE
        $sqlA = "INSERT INTO personal_data (lastname, firstname, middlename, suffix, dob, gender, civilstatus, civil_status_reason, tax_number, nationality, religion, pob_city, pob_country, home_address, mobile, email) 
                 VALUES (:lastname, :firstname, :middlename, :suffix, :dob, :gender, :civilstatus, :civil_reason, :tax, :nat, :rel, :pob_city, :pob_country, :address, :mobile, :email)";
        
        $stmtA = $pdo->prepare($sqlA);
        $stmtA->execute([
            ':lastname'    => $data['lastname'],
            ':firstname'   => $data['firstname'],
            ':middlename'  => $data['middlename'] ?? '',
            ':suffix'      => $data['suffix'] ?? '',
            ':dob'         => $data['dateofbirth'],
            ':gender'      => $data['gender'] ?? '',
            ':civilstatus' => $data['civilstatus'] ?? '',
            ':civil_reason'=> $data['reasonforother'] ?? '',
            ':tax'         => $data['taxnumber'] ?? '',
            ':nat'         => $data['nationality'],
            ':rel'         => $data['religion'] ?? '',
            ':pob_city'    => $data['city&province'] ?? '',
            ':pob_country' => $data['city&country'] ?? '',
            ':address'     => $data['final_address'],
            ':mobile'      => $data['mobilenumber'],
            ':email'       => $data['emailaddress']
        ]);

        $lastId = $pdo->lastInsertId();

      // BENEFICIARIES NGA PART
        $childrenStr = "";
        if (!empty($data['childfirstname1'])) { $childrenStr .= "Child 1: " . $data['childfirstname1'] . " " . $data['childlastname1'] . "; "; }
        if (!empty($data['childfirstname2'])) { $childrenStr .= "Child 2: " . $data['childfirstname2'] . " " . $data['childlastname2'] . "; "; }
        if (!empty($data['childfirstname3'])) { $childrenStr .= "Child 3: " . $data['childfirstname3'] . " " . $data['childlastname3'] . "; "; }
        if (!empty($data['childfirstname4'])) { $childrenStr .= "Child 4: " . $data['childfirstname4'] . " " . $data['childlastname4'] . "; "; }
        if (!empty($data['childfirstname5'])) { $childrenStr .= "Child 5: " . $data['childfirstname5'] . " " . $data['childlastname5'] . "; "; }

        $other_bene = ($data['otherfirstname1'] ?? '') . " " . ($data['otherlastname1'] ?? '') . " (" . ($data['otherrelationship1'] ?? '') . ")";

        $sqlB = "INSERT INTO beneficiaries_data (reg_id, children_info, other_beneficiaries) VALUES (?, ?, ?)";
        $pdo->prepare($sqlB)->execute([$lastId, $childrenStr, $other_bene]);
 
       // EMPLOYEMENT CERTIFICATION NI DIRING DAPITA
        $empType = !empty($data['monthearn']) ? 'OFW' : 'Self-Employed';
        $earnings = !empty($data['monthlyearning']) ? $data['monthlyearning'] : ($data['monthearn'] ?? '0');
        
        $sqlC = "INSERT INTO employment_certification (reg_id, monthly_earnings, profession, employment_type, cert_date) VALUES (?, ?, ?, ?, ?)";
        $pdo->prepare($sqlC)->execute([
            $lastId,
            $earnings,
            $data['profession/business'] ?? 'N/A',
            $empType,
            $data['Ddate'] ?? date('Y-m-d')
        ]);

       // SSS INTERNAL DATA
        $sqlD = "INSERT INTO sss_internal_data (reg_id, ss_number, business_code, msc_amount, processed_by) VALUES (?, ?, ?, ?, ?)";
        $pdo->prepare($sqlD)->execute([
            $lastId,
            $data['SSSno'] ?? '',
            $data['businesscode'] ?? '',
            $data['approvedmsc'] ?? '0',
            "SSS System" 
        ]);

// LAST KAY FAM DATA
        $sqlE = "INSERT INTO family_data (reg_id, father_name, mother_name, spouse_name) VALUES (?, ?, ?, ?)";
        $pdo->prepare($sqlE)->execute([
            $lastId,
            trim(($data['fatherfirstname'] ?? '') . " " . ($data['fatherlname'] ?? '')),
            trim(($data['motherfname'] ?? '') . " " . ($data['motherlname'] ?? '')),
            trim(($data['spousefirstname'] ?? '') . " " . ($data['spouselname'] ?? ''))
        ]);

        $pdo->commit();
        return true;

    } catch (Exception $e) {
        if ($pdo->inTransaction()) {
            $pdo->rollBack();
        }
        error_log("Registration Error: " . $e->getMessage());
        return false;
    }
}

// CHECKING NI DAPITA PARA FOR THE SUBMIT BUTTON
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

// CALLING OF FUNCTION NGA PART
    $result = saveSSSRegistration($pdo, $_POST);

    if ($result) {
        echo "<script>alert('All data successfully linked and saved!'); window.location='index.php';</script>";
        exit;
    } else {
        echo "<script>alert('Error: Could not save data. Check logs.'); window.history.back();</script>";
        exit;
    }
} else {
    header("Location: index.php");
    exit;
}
?>