<?php
require "db.php";
session_start();

function saveSSSRegistration(PDO $pdo, array $data) {
    try {
        $pdo->beginTransaction();

        // 1. Insert Personal Data (Updated with specific address columns)
        $sqlA = "INSERT INTO personal_data (
                    lastname, firstname, middlename, suffix, dob, gender, civilstatus, 
                    civil_status_reason, tax_number, nationality, religion, pob_city, pob_country, 
                    addr_rm_flr, addr_house_lot, addr_street, addr_subdivision, 
                    addr_brgy, addr_city_muni, addr_province, addr_country, addr_zip,
                    mobile, email
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        $stmtA = $pdo->prepare($sqlA);
        $stmtA->execute([
            $data['lastname'], $data['firstname'], $data['middlename'] ?? '', $data['suffix'] ?? '', 
            $data['dateofbirth'], $data['gender'] ?? '', $data['civilstatus'] ?? '', 
            $data['reasonforother'] ?? '', $data['taxnumber'] ?? '', $data['nationality'], 
            $data['religion'] ?? '', $data['city&province'] ?? '', $data['city&country'] ?? '',
            // Address Parts
            $data['rmflrunit'] ?? '', $data['houselot'] ?? '', $data['streetname'] ?? '', 
            $data['subdivision'] ?? '', $data['bardisloc'] ?? '', $data['citymuni'] ?? '', 
            $data['province'] ?? '', $data['country'] ?? '', $data['zipcode'] ?? '',
            $data['mobilenumber'], $data['emailaddress']
        ]);

        $lastId = $pdo->lastInsertId();

        // 2. Insert Beneficiaries (Keep as is)
        $sqlB = "INSERT INTO beneficiaries_data (reg_id, child_lname1, child_fname1, child_mname1, child_sname1, child_dob1, child_lname2, child_fname2, child_mname2, child_sname2, child_dob2, child_lname3, child_fname3, child_mname3, child_sname3, child_dob3, child_lname4, child_fname4, child_mname4, child_sname4, child_dob4, child_lname5, child_fname5, child_mname5, child_sname5, child_dob5, other_lname1, other_fname1, other_mname1, other_sname1, other_rel1, other_dob1, other_lname2, other_fname2, other_mname2, other_sname2, other_rel2, other_dob2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $pdo->prepare($sqlB)->execute([
            $lastId, 
            $data['childlastname1'] ?? '', $data['childfirstname1'] ?? '', $data['childmiddlename1'] ?? '', $data['childsuffixname1'] ?? '', !empty($data['childbirthdate1']) ? $data['childbirthdate1'] : null,
            $data['childlastname2'] ?? '', $data['childfirstname2'] ?? '', $data['childmiddlename2'] ?? '', $data['childsuffixname2'] ?? '', !empty($data['childbirthdate2']) ? $data['childbirthdate2'] : null,
            $data['childlastname3'] ?? '', $data['childfirstname3'] ?? '', $data['childmiddlename3'] ?? '', $data['childsuffixname3'] ?? '', !empty($data['childbirthdate3']) ? $data['childbirthdate3'] : null,
            $data['childlastname4'] ?? '', $data['childfirstname4'] ?? '', $data['childmiddlename4'] ?? '', $data['childsuffixname4'] ?? '', !empty($data['childbirthdate4']) ? $data['childbirthdate4'] : null,
            $data['childlastname5'] ?? '', $data['childfirstname5'] ?? '', $data['childmiddlename5'] ?? '', $data['childsuffixname5'] ?? '', !empty($data['childbirthdate5']) ? $data['childbirthdate5'] : null,
            $data['otherlastname1'] ?? '', $data['otherfirstname1'] ?? '', $data['othermiddlename1'] ?? '', $data['othersuffixname1'] ?? '', $data['otherrelationship1'] ?? '', !empty($data['otherdateofbirth1']) ? $data['otherdateofbirth1'] : null,
            $data['otherlastname2'] ?? '', $data['otherfirstname2'] ?? '', $data['othermiddlename2'] ?? '', $data['othersuffixname2'] ?? '', $data['otherrelationship2'] ?? '', !empty($data['otherdateofbirth2']) ? $data['otherdateofbirth2'] : null
        ]);

        // 3. Insert Employment
        $sqlC = "INSERT INTO employment_certification (reg_id, employment_type, monthly_earnings, profession, cert_date, year_prof_started, foreign_address, ofw_monthly_earnings, flexifund_membership, spouse_sss_no, spouse_monthly_income, printed_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $empType = !empty($data['monthearn']) ? 'OFW' : (!empty($data['SSSno']) ? 'Non-Working Spouse' : 'Self-Employed');
        $pdo->prepare($sqlC)->execute([
            $lastId, $empType, $data['monthlyearning'] ?? 0, $data['profession/business'] ?? 'N/A', $data['Ddate'] ?? date('Y-m-d'), !empty($data['yearprof']) ? $data['yearprof'] : null, $data['foreignaddress'] ?? '', $data['monthearn'] ?? 0, $data['flexifund'] ?? 'no', $data['SSSno'] ?? '', $data['monthyincomespouse'] ?? 0, $data['Dprintedname'] ?? ''
        ]);

        // 4. Insert Family
        $sqlE = "INSERT INTO family_data (reg_id, father_lname, father_fname, father_mname, father_suffix, mother_lname, mother_fname, mother_mname, mother_suffix, spouse_lname, spouse_fname, spouse_mname, spouse_suffix) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $pdo->prepare($sqlE)->execute([
            $lastId, $data['fatherlname'] ?? '', $data['fatherfirstname'] ?? '', $data['fathermiddlename'] ?? '', $data['fathersuffix'] ?? '', $data['motherlname'] ?? '', $data['motherfname'] ?? '', $data['mothermiddlename'] ?? '', $data['mothersuffix'] ?? '', $data['spouselname'] ?? '', $data['spousefirstname'] ?? '', $data['spousemiddlename'] ?? '', $data['spousesuffix'] ?? ''
        ]);

        // 5. Insert SSS Internal (Part 2)
        $sqlD = "INSERT INTO sss_internal_data (reg_id, ss_number, business_code, msc_amount, monthly_ss_contribution, start_of_payment, working_spouse_msc, flexi_fund_app, received_date, processed_date, reviewed_date, processed_by) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $pdo->prepare($sqlD)->execute([
            $lastId, $data['SSSno'] ?? '', $data['businesscode'] ?? '', $data['approvedmsc'] ?? 0, $data['monthlysscontribution'] ?? 0, !empty($data['startofpayment']) ? $data['startofpayment'] : null, $data['workingspouseMSC'] ?? 0, $data['flexiapplication'] ?? null, !empty($data['dateandtime1']) ? $data['dateandtime1'] : null, !empty($data['dateandtime2']) ? $data['dateandtime2'] : null, !empty($data['dateandtime3']) ? $data['dateandtime3'] : null, "SSS System"
        ]);

        $pdo->commit();
        return true;
    } catch (Exception $e) {
        if ($pdo->inTransaction()) $pdo->rollBack();
        $_SESSION['db_error'] = $e->getMessage();
        return false;
    }
}

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['submitinformation'])) {
    if (saveSSSRegistration($pdo, $_POST)) {
        echo "<script>alert('New registration saved successfully!'); window.location='view_list.php';</script>";
    } else {
        $errMsg = addslashes($_SESSION['db_error'] ?? 'Unknown error');
        echo "<script>alert('Error: $errMsg'); window.history.back();</script>";
        unset($_SESSION['db_error']);
    }
}
?>