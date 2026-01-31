<?php
require "db.php";

// 1. INITIALIZE ALL VARIABLES (AYAW KALIMOT!)
$id = "";
$lastname = ""; $firstname = ""; $middlename = ""; $suffix = ""; $dob = "";
$gender = ""; $civilstatus = ""; $reasonforother = ""; $taxnumber = "";
$nationality = ""; $religion = ""; $city_province = ""; $city_country = "";
$mobile = ""; $email = ""; $telephone = "";

// INITIALIZE ALL 9 ADDRESS VARIABLES
$addr_rm = ""; 
$addr_house_lot = ""; 
$addr_street = ""; 
$addr_subdivision = ""; 
$addr_brgy = ""; 
$addr_city = ""; 
$addr_province = ""; 
$addr_country = ""; 
$addr_zip = "";

$flname = ""; $ffname = ""; $fmname = ""; $fsuffix = "";
$mlname = ""; $mfname = ""; $mmname = ""; $msuffix = "";
$slname = ""; $sfname = ""; $smname = ""; $ssuffix = "";

for ($i = 1; $i <= 5; $i++) {
    ${"clname$i"} = ""; ${"cfname$i"} = ""; ${"cmname$i"} = ""; ${"csuffix$i"} = ""; ${"cdob$i"} = "";
}
for ($i = 1; $i <= 2; $i++) {
    ${"olname$i"} = ""; ${"ofname$i"} = ""; ${"omname$i"} = ""; ${"osname$i"} = ""; ${"orel$i"} = ""; ${"odob$i"} = "";
}

$profession = ""; $yearprof = ""; $monthlyearning = "";
$foreignaddress = ""; $monthearn = ""; $flexifund = "";
$sssno_spouse = ""; $income_spouse = "";

// Part D Variables
$cert_printed_name = ""; $cert_date = "";

// Part 2 (SSS Internal) Variables
$business_code = ""; $monthly_ss = ""; $start_pay = "";
$spouse_msc = ""; $approved_msc = ""; $flexi_app = "";
$date_rec = ""; $date_proc = ""; $date_rev = ""; $ss_number = "";

// 2. CHECK IF WE ARE IN EDIT MODE
if (isset($_GET['edit_id'])) {
    $id = $_GET['edit_id'];

    try {
        // PERSONAL DATA - Updated to include all separate address columns
        $stmt = $pdo->prepare("SELECT * FROM personal_data WHERE reg_id = ?");
        $stmt->execute([$id]);
        $user = $stmt->fetch();
        if ($user) {
            $lastname = $user['lastname']; 
            $firstname = $user['firstname']; 
            $middlename = $user['middlename'];
            $suffix = $user['suffix']; 
            $dob = $user['dob']; 
            $gender = $user['gender'];
            $civilstatus = $user['civilstatus']; 
            $reasonforother = $user['civil_status_reason'];
            $taxnumber = $user['tax_number']; 
            $nationality = $user['nationality'];
            $religion = $user['religion']; 
            $city_province = $user['pob_city'];
            $city_country = $user['pob_country']; 
            
            // FETCHING ALL 9 ADDRESS FIELDS FROM DATABASE
            $addr_rm          = $user['addr_rm_flr'] ?? "";
            $addr_house_lot   = $user['addr_house_lot'] ?? "";
            $addr_street      = $user['addr_street'] ?? "";
            $addr_subdivision = $user['addr_subdivision'] ?? "";
            $addr_brgy        = $user['addr_brgy'] ?? "";
            $addr_city        = $user['addr_city_muni'] ?? "";
            $addr_province    = $user['addr_province'] ?? "";
            $addr_country     = $user['addr_country'] ?? "";
            $addr_zip         = $user['addr_zip'] ?? "";
            
            $mobile = $user['mobile']; 
            $email = $user['email'];
        }

        // FAMILY & SPOUSE
        $stmtFam = $pdo->prepare("SELECT * FROM family_data WHERE reg_id = ?");
        $stmtFam->execute([$id]);
        $fam = $stmtFam->fetch();
        if ($fam) {
            $flname = $fam['father_lname']; $ffname = $fam['father_fname']; 
            $fmname = $fam['father_mname']; $fsuffix = $fam['father_suffix'];
            $mlname = $fam['mother_lname']; $mfname = $fam['mother_fname']; 
            $mmname = $fam['mother_mname']; $msuffix = $fam['mother_suffix'];
            $slname = $fam['spouse_lname']; $sfname = $fam['spouse_fname']; 
            $smname = $fam['spouse_mname']; $ssuffix = $fam['spouse_suffix'];
        }

        // BENEFICIARIES
        $stmtBen = $pdo->prepare("SELECT * FROM beneficiaries_data WHERE reg_id = ?");
        $stmtBen->execute([$id]);
        $ben = $stmtBen->fetch();
        if ($ben) {
            for ($i = 1; $i <= 5; $i++) {
                ${"clname$i"} = $ben["child_lname$i"];
                ${"cfname$i"} = $ben["child_fname$i"];
                ${"cmname$i"} = $ben["child_mname$i"];
                ${"csuffix$i"} = $ben["child_sname$i"];
                ${"cdob$i"}   = $ben["child_dob$i"];
            }
            for ($i = 1; $i <= 2; $i++) {
                ${"olname$i"} = $ben["other_lname$i"];
                ${"ofname$i"} = $ben["other_fname$i"];
                ${"omname$i"} = $ben["other_mname$i"];
                ${"osname$i"} = $ben["other_sname$i"];
                ${"orel$i"}   = $ben["other_rel$i"];
                ${"odob$i"}   = $ben["other_dob$i"];
            }
        }

        // EMPLOYMENT / PART C & D
        $stmtEmp = $pdo->prepare("SELECT * FROM employment_certification WHERE reg_id = ?");
        $stmtEmp->execute([$id]);
        $emp = $stmtEmp->fetch();
        if ($emp) {
            $profession = $emp['profession'];
            $yearprof = $emp['year_prof_started']; 
            $monthlyearning = $emp['monthly_earnings'];
            $foreignaddress = $emp['foreign_address'];
            $monthearn = $emp['ofw_monthly_earnings'];
            $flexifund = $emp['flexifund_membership'];
            $sssno_spouse = $emp['spouse_sss_no'];
            $income_spouse = $emp['spouse_monthly_income'];
            $cert_printed_name = $emp['printed_name'];
            $cert_date = $emp['cert_date'];
        }

        // SSS INTERNAL DATA (PART 2)
        $stmtInt = $pdo->prepare("SELECT * FROM sss_internal_data WHERE reg_id = ?");
        $stmtInt->execute([$id]);
        $internal = $stmtInt->fetch();
        if ($internal) {
            $ss_number = $internal['ss_number'];
            $business_code = $internal['business_code'];
            $approved_msc = $internal['msc_amount'];
            $monthly_ss = $internal['monthly_ss_contribution'];
            $start_pay = $internal['start_of_payment'];
            $spouse_msc = $internal['working_spouse_msc'];
            $flexi_app = $internal['flexi_fund_app'] ?? ""; 
            $date_rec = $internal['received_date'];
            $date_proc = $internal['processed_date'];
            $date_rev = $internal['reviewed_date'];
        }

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FORM</title>
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
    <form action="<?= !empty($id) ? 'update.php' : 'store.php' ?>" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="reg_id" value="<?= $id ?>">
      <div class="outercontainer">
        <div class="PART1">
          <h3 class="intropart1">
            PART - 1 TO BE FILLED OUT BY THE REGISTRANT
          </h3>
          <div class="innercontainerpart1">
            <h3 class="introA">A. PERSONAL DATA</h3>

           <input type="hidden" name="reg_id" value="<?= $id ?>">

<div class="part1A">
    <div class="Asection1">
        <div class="outerfullname">
            <div class="NAME"><h3>NAME</h3></div>
            <div class="lastname">
                <p>Last Name</p>
                <input type="text" name="lastname" value="<?= htmlspecialchars($lastname) ?>" />
            </div>
            <div class="firstname">
                <p>First Name</p>
                <input type="text" name="firstname" value="<?= htmlspecialchars($firstname) ?>" />
            </div>
            <div class="middlename">
                <p>Middle Name</p>
                <input type="text" name="middlename" value="<?= htmlspecialchars($middlename) ?>" />
            </div>
            <div class="suffix">
                <p>Suffix</p>
                <input type="text" name="suffix" value="<?= htmlspecialchars($suffix) ?>" />
            </div>
        </div>
        <div class="outerdateofbirth">
            <div class="desdateofbirth">
                <p>DATE OF BIRTH</p>
                <input type="date" name="dateofbirth" value="<?= $dob ?>" />
            </div>
        </div>
    </div>

    <div class="Asection2">
        <div class="desSEX">
            <p>SEX:</p>
            <div class="Male">
                <input type="radio" name="gender" value="male" <?= ($gender == 'male') ? 'checked' : '' ?> />
                <label>Male</label>
            </div>
            <div class="Female">
                <input type="radio" name="gender" value="female" <?= ($gender == 'female') ? 'checked' : '' ?> />
                <label>Female</label>
            </div>
        </div>

        <div class="desCIVIL">
            <p>CIVIL STATUS:</p>
            <div class="Single">
                <input type="radio" name="civilstatus" value="single" <?= ($civilstatus == 'single') ? 'checked' : '' ?> />
                <label>Single</label>
            </div>
            <div class="Married">
                <input type="radio" name="civilstatus" value="married" <?= ($civilstatus == 'married') ? 'checked' : '' ?> />
                <label>Married</label>
            </div>
            <div class="Widowed">
                <input type="radio" name="civilstatus" value="widowed" <?= ($civilstatus == 'widowed') ? 'checked' : '' ?> />
                <label>Widowed</label>
            </div>
            <div class="Others">
                <input type="radio" name="civilstatus" value="others" <?= ($civilstatus == 'others') ? 'checked' : '' ?> />
                <label>Others</label>
                <div id="forhidingreason" style="display: <?= ($civilstatus == 'others') ? 'flex' : 'none' ?>;">
                    <input type="text" name="reasonforother" value="<?= htmlspecialchars($reasonforother) ?>"/>
                </div>
            </div>
        </div>

        <div class="desTAX">
            <p>TAX IDENTIFICATION NUMBER (IF ANY)</p>
            <input type="number" name="taxnumber" value="<?= htmlspecialchars($taxnumber) ?>">
        </div>
    </div>

    <div class="Asection3">
        <div class="desnationality">
            <p>NATIONALITY:</p>
            <input type="text" name="nationality" value="<?= htmlspecialchars($nationality) ?>">
        </div>
        <div class="desreligion">
            <p>RELIGION:</p>
            <input type="text" name="religion" value="<?= htmlspecialchars($religion) ?>">
        </div>
        <div class="desplaceofbirth">
            <p class="placeofdes">PLACE OF BIRTH:</p>
            <label class="des">CITY,MUNICIPALITY/PROVINCE</label>
            <input type="text" name="city&province" value="<?= htmlspecialchars($city_province) ?>">
            <label class="des">CITY/COUNTRY</label>
            <input type="text" name="city&country" value="<?= htmlspecialchars($city_country) ?>"><br>
            <label class="des">The Same with Home Address</label>
            <input type="checkbox" name="samehomeaddress" value="yes"> 
        </div>
    </div>

   <div id="home-address-section">
    <div class="Asection4">
        <div class="homeaddress"><h3>HOME ADDRESS:</h3></div>
        
        <div class="rmunit">
            <p>(RM/FLR/UNIT NO. & BLDG. NAME)</p>
            <input type="text" name="rmflrunit" value="<?= htmlspecialchars($addr_rm) ?>" />
        </div>

        <div class="houselot">
            <p>(HOUSE/LOT & BLK. NO)</p>
            <input type="text" name="houselot" value="<?= htmlspecialchars($addr_house_lot ?? '') ?>" />
        </div>

        <div class="streetname">
            <p>(STREET NAME)</p>
            <input type="text" name="streetname" value="<?= htmlspecialchars($addr_street) ?>" />
        </div>

        <div class="subdivision">
            <p>(SUBDIVISION)</p>
            <input type="text" name="subdivision" value="<?= htmlspecialchars($addr_subdivision ?? '') ?>" />
        </div>
    </div>

    <div class="Asection5">
        <div class="bardisloc">
            <p>(BARANGAY/DISTRICT/LOCALITY)</p>
            <input type="text" name="bardisloc" value="<?= htmlspecialchars($addr_brgy ?? '') ?>"/>
        </div>

        <div class="citymuni">
            <p>(CITY/MUNICIPALITY)</p>
            <input type="text" name="citymuni" value="<?= htmlspecialchars($addr_city) ?>"/>
        </div>

        <div class="province">
            <p>(PROVINCE)</p>
            <input type="text" name="province" value="<?= htmlspecialchars($addr_province ?? '') ?>"/>
        </div>

        <div class="country">
            <p>(COUNTRY)</p>
            <input type="text" name="country" value="<?= htmlspecialchars($addr_country ?? '') ?>"/>
        </div>

        <div class="zip">
            <p>ZIPCODE</p>
            <input type="number" name="zipcode" value="<?= htmlspecialchars($addr_zip ?? '') ?>"/>
        </div>
    </div>
</div>
            <div class="Asection6">
    <div class="cellnum">
        <p>MOBILE/CELLPHONE NUMBER</p>
        <input type="number" name="mobilenumber" value="<?= htmlspecialchars($mobile) ?>">
    </div>

    <div class="email">
        <p>E-MAIL ADDRESS</p>
        <input type="text" name="emailaddress" value="<?= htmlspecialchars($email) ?>">
    </div>

    <div class="telephonenumber">
        <p>TELEPHONE NUMBER (Country Code + Area Code +Tel No.)</p>
        <input type="text" name="telephonenum" value="<?= htmlspecialchars($telephone) ?>">
    </div>
</div>

<div class="Asection7">
    <div class="fatherinfo">
        <p>FATHER</p>
    </div>
    <div class="fatherlname">
        <p>(LAST NAME)</p>
        <input type="text" name="fatherlname" value="<?= htmlspecialchars($flname) ?>">
    </div>
    <div class="fatherfirstname">
        <p>(FIRST NAME)</p>
        <input type="text" name="fatherfirstname" value="<?= htmlspecialchars($ffname) ?>">
    </div>
    <div class="fathermiddlename">
        <p>(MIDDLE NAME)</p>
        <input type="text" name="fathermiddlename" value="<?= htmlspecialchars($fmname) ?>">
    </div>
    <div class="fathersuffix">
        <p>(SUFFIX)</p>
        <input type="text" name="fathersuffix" value="<?= htmlspecialchars($fsuffix) ?>">
    </div>
</div>

<div class="Asection8">
    <div class="motherinfo">
        <p>MOTHER'S MAIDEN NAME</p>
    </div>
    <div class="motherlname">
        <p>(LAST NAME)</p>
        <input type="text" name="motherlname" value="<?= htmlspecialchars($mlname) ?>">
    </div>
    <div class="motherfname">
        <p>(FIRST NAME)</p>
        <input type="text" name="motherfname" value="<?= htmlspecialchars($mfname) ?>">
    </div>
    <div class="mothermiddlename">
        <p>(MIDDLE NAME)</p>
        <input type="text" name="mothermiddlename" value="<?= htmlspecialchars($mmname) ?>">
    </div>
    <div class="mothersuffix">
        <p>(SUFFIX)</p>
        <input type="text" name="mothersuffix" value="<?= htmlspecialchars($msuffix) ?>">
    </div>
</div>

<div class="part1B">
    <h3 class="introB">B. DEPENDENT(S)BENEFICIARY/IES</h3>

    <div class="Bsection1">
        <div class="spouseinfo">
            <p>SPOUSE</p>
        </div>
        <div class="spouselname">
            <p>(LAST NAME)</p>
            <input type="text" name="spouselname" value="<?= htmlspecialchars($slname) ?>">
        </div>
        <div class="spousefirstname">
            <p>(FIRST NAME)</p>
            <input type="text" name="spousefirstname" value="<?= htmlspecialchars($sfname) ?>">
        </div>
        <div class="spousemiddlename">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="spousemiddlename" value="<?= htmlspecialchars($smname) ?>">
        </div>
        <div class="spousesuffix">
            <p>(SUFFIX)</p>
            <input type="text" name="spousesuffix" value="<?= htmlspecialchars($ssuffix) ?>">
        </div>
    </div>

    <div class="Bsection2">
        <div class="childreninfo">
            <p>CHILD/REN</p>
            <p>1.</p>
        </div>
        <div class="childlastname1">
            <p>(LAST NAME)</p>
            <input type="text" name="childlastname1" value="<?= htmlspecialchars($clname1) ?>">
        </div>
        <div class="childfirstname1">
            <p>(FIRST NAME)</p>
            <input type="text" name="childfirstname1" value="<?= htmlspecialchars($cfname1) ?>">
        </div>
        <div class="childmiddlename1">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="childmiddlename1" value="<?= htmlspecialchars($cmname1) ?>">
        </div>
        <div class="childsuffixname1">
            <p>(SUFFIX)</p>
            <input type="text" name="childsuffixname1" value="<?= htmlspecialchars($csuffix1) ?>">
        </div>
        <div class="childbirthdate1">
            <p>DATE OF BIRTH</p>
            <input type="date" name="childbirthdate1" value="<?= $cdob1 ?>">
        </div>
    </div>

    <div class="Bsection3">
        <div class="childreninfo"><p>2.</p></div>
        <div class="childlastname2">
            <p>(LAST NAME)</p>
            <input type="text" name="childlastname2" value="<?= htmlspecialchars($clname2) ?>">
        </div>
        <div class="childfirstname2">
            <p>(FIRST NAME)</p>
            <input type="text" name="childfirstname2" value="<?= htmlspecialchars($cfname2) ?>">
        </div>
        <div class="childmiddlename2">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="childmiddlename2" value="<?= htmlspecialchars($cmname2) ?>">
        </div>
        <div class="childsuffixname2">
            <p>(SUFFIX)</p>
            <input type="text" name="childsuffixname2" value="<?= htmlspecialchars($csuffix2) ?>">
        </div>
        <div class="childbirthdate2">
            <p>DATE OF BIRTH</p>
            <input type="date" name="childbirthdate2" value="<?= $cdob2 ?>">
        </div>
    </div>

    <div class="Bsection4">
        <div class="childreninfo"><p>3.</p></div>
        <div class="childlastname3">
            <p>(LAST NAME)</p>
            <input type="text" name="childlastname3" value="<?= htmlspecialchars($clname3) ?>">
        </div>
        <div class="childfirstname3">
            <p>(FIRST NAME)</p>
            <input type="text" name="childfirstname3" value="<?= htmlspecialchars($cfname3) ?>">
        </div>
        <div class="childmiddlename3">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="childmiddlename3" value="<?= htmlspecialchars($cmname3) ?>">
        </div>
        <div class="childsuffixname3">
            <p>(SUFFIX)</p>
            <input type="text" name="childsuffixname3" value="<?= htmlspecialchars($csuffix3) ?>">
        </div>
        <div class="childbirthdate3">
            <p>DATE OF BIRTH</p>
            <input type="date" name="childbirthdate3" value="<?= $cdob3 ?>">
        </div>
    </div>

    <div class="Bsection5">
        <div class="childreninfo"><p>4.</p></div>
        <div class="childlastname4">
            <p>(LAST NAME)</p>
            <input type="text" name="childlastname4" value="<?= htmlspecialchars($clname4) ?>">
        </div>
        <div class="childfirstname4">
            <p>(FIRST NAME)</p>
            <input type="text" name="childfirstname4" value="<?= htmlspecialchars($cfname4) ?>">
        </div>
        <div class="childmiddlename4">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="childmiddlename4" value="<?= htmlspecialchars($cmname4) ?>">
        </div>
        <div class="childsuffixname4">
            <p>(SUFFIX)</p>
            <input type="text" name="childsuffixname4" value="<?= htmlspecialchars($csuffix4) ?>">
        </div>
        <div class="childbirthdate4">
            <p>DATE OF BIRTH</p>
            <input type="date" name="childbirthdate4" value="<?= $cdob4 ?>">
        </div>
    </div>

    <div class="Bsection6">
        <div class="childreninfo"><p>5.</p></div>
        <div class="childlastname5">
            <p>(LAST NAME)</p>
            <input type="text" name="childlastname5" value="<?= htmlspecialchars($clname5) ?>">
        </div>
        <div class="childfirstname5">
            <p>(FIRST NAME)</p>
            <input type="text" name="childfirstname5" value="<?= htmlspecialchars($cfname5) ?>">
        </div>
        <div class="childmiddlename5">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="childmiddlename5" value="<?= htmlspecialchars($cmname5) ?>">
        </div>
        <div class="childsuffixname5">
            <p>(SUFFIX)</p>
            <input type="text" name="childsuffixname5" value="<?= htmlspecialchars($csuffix5) ?>">
        </div>
        <div class="childbirthdate5">
            <p>DATE OF BIRTH</p>
            <input type="date" name="childbirthdate5" value="<?= $cdob5 ?>">
        </div>
    </div>
</div>

                  <div class="Bsection7">
    <div class="otherbene">
        <div class="otherdes">
            <p>OTHER BENEFICIARY/IES <b>(If without spouse & child and parents are both decease)</b></p>
        </div>
        <div class="otherinfo">
            <div class="childreninfo">
                <p>1.</p>
            </div>
            <div class="otherlastname1">
                <p>(LAST NAME)</p>
                <input type="text" name="otherlastname1" value="<?= htmlspecialchars($olname1) ?>">
            </div>
            <div class="otherfirstname1">
                <p>(FIRST NAME)</p>
                <input type="text" name="otherfirstname1" value="<?= htmlspecialchars($ofname1) ?>">
            </div>
            <div class="othermiddlename1">
                <p>(MIDDLE NAME)</p>
                <input type="text" name="othermiddlename1" value="<?= htmlspecialchars($omname1) ?>">
            </div>
            <div class="othersuffixname1">
                <p>(SUFFIX)</p>
                <input type="text" name="othersuffixname1" value="<?= htmlspecialchars($osname1) ?>">
            </div>
        </div>
    </div>
    <div class="otherRelationship1">
        <p>RELATIONSHIP</p>
        <input type="text" name="otherrelationship1" value="<?= htmlspecialchars($orel1) ?>">
    </div>
    <div class="otherdateofbirth1">
        <p>DATE OF BIRTH</p>
        <input type="date" name="otherdateofbirth1" value="<?= $odob1 ?>">
    </div>
</div>

<div class="Bsection8">
    <div class="outerotherinfo2">
        <div class="childreninfo">
            <p>2.</p>
        </div>
        <div class="otherlastname2">
            <p>(LAST NAME)</p>
            <input type="text" name="otherlastname2" value="<?= htmlspecialchars($olname2) ?>">
        </div>
        <div class="otherfirstname2">
            <p>(FIRST NAME)</p>
            <input type="text" name="otherfirstname2" value="<?= htmlspecialchars($ofname2) ?>">
        </div>
        <div class="othermiddlename2">
            <p>(MIDDLE NAME)</p>
            <input type="text" name="othermiddlename2" value="<?= htmlspecialchars($omname2) ?>">
        </div>
        <div class="othersuffixname2">
            <p>(SUFFIX)</p>
            <input type="text" name="othersuffixname2" value="<?= htmlspecialchars($osname2) ?>">
        </div>
    </div>
    <div class="otherRelationship2">
        <p>RELATIONSHIP</p>
        <input type="text" name="otherrelationship2" value="<?= htmlspecialchars($orel2) ?>">
    </div>
    <div class="otherdateofbirth2">
        <p>DATE OF BIRTH</p>
        <input type="date" name="otherdateofbirth2" value="<?= $odob2 ?>">
    </div>
</div>
          <div class="part1C">
    <h3 class="introB">C. FOR SELF-EMPLOYED/OVERSEAS FILIPINO WORKER/NON-WORKING SPOUSE</h3>
    <div class="Csection1">
        <div class="S1innerC1">
            <p>SELF-EMPLOYED(SE)</p>
            <label>Profession/Business</label>
            <input type="text" name="profession/business" value="<?= htmlspecialchars($profession) ?>">
            <label>Year Prof/Business Started</label>
            <input type="date" name="yearprof" value="<?= $yearprof ?>">
            <label>Monthly Earnings</label>
            <input type="number" name="monthlyearning" value="<?= htmlspecialchars($monthlyearning) ?>">
        </div>

        <div class="S1innerC2">
            <div class="C2inner1">
                <p>OVERSEAS FILIPINO WORKER(OFW)</p>
                <label>Foreign Address</label>
                <input type="text" name="foreignaddress" value="<?= htmlspecialchars($foreignaddress) ?>">
            </div>

            <div class="C2inner2">
                <label>Monthly Earnings:</label>
                <input type="number" name="monthearn" value="<?= htmlspecialchars($monthearn) ?>">

                <div class="flexifund">
                    <p>Are you applying for membership in the Flexi-Fund Program?</p>
                    <div class="innerflexifund">
                        <label>YES</label>
                        <input type="radio" name="flexifund" value="yes" <?= ($flexifund == 'yes') ? 'checked' : '' ?>>
                        <label>NO</label>
                        <input type="radio" name="flexifund" value="no" <?= ($flexifund == 'no') ? 'checked' : '' ?>>
                    </div>
                </div>
            </div>
        </div>

        <div class="S1innerC3">
            <div class="innerC3">
                <p class="parainner3">NON-WORKING SPOUSE (NWS)</p>
                <p>SSS No./Common Reference No. of Working Spouse</p>
                <input type="number" name="SSSno" value="<?= htmlspecialchars($sssno_spouse) ?>">
            </div>

            <div class="innerC3">
                <p>Monthly Income of Working Spouse(P)</p>
                <input type="number" name="monthyincomespouse" value="<?= htmlspecialchars($income_spouse) ?>">
                <p>I agree with my spouse's membership with SSS</p>
                <input type="file" name="signaturespousefile">
                <p class="signature">SIGNATURE OVER PRINTED NAME OF WORKING SPOUSE</p>
            </div>
        </div>
    </div>
</div>

       <div class="part1D">
    <h3>D. CERTIFICATION </h3>
    <div class="outerD">
        <div class="innerD1">
            <div class="D1des">
                <p>I certify that the information provided in this form are true and correct (If registrant cannot sign, affix fingerprints in the presence of an SSS personnel.)</p>
            </div>

            <div class="D1info">
                <div class="printedname">
                    <input type="text" name="Dprintedname" value="<?= htmlspecialchars($cert_printed_name) ?>">
                    <label>PRINTED NAME</label>
                </div>

                <div class="printedname">
                    <input type="file" name="Dsignature">
                    <label>SIGNATURE</label>
                </div>

                <div class="printedname">
                    <input type="date" name="Ddate" value="<?= $cert_date ?>">
                    <label>DATE</label>
                </div>
            </div>
        </div>

        <div class="innerD2">
            <div class="D2des">
                <h3>Registrant is required to affix fingerprints.</h3>
            </div>
            <div class="D2info">
                <div class="thumb">
                    <input type="file" name="rightthumb">
                    <label>RIGHT THUMB</label>
                </div>
                <div class="thumb">
                    <input type="file" name="rightindex">
                    <label>RIGHT INDEX</label>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="innercontainerpart2">
    <h3>PART 2 - TO BE FILLED OUT BY SSS</h3>
    <div class="part2section1">
        <div class="innerpart2S1">
            <div class="mostinnerS1">
                <div class="businesscode">
                    <p>BUSINESS CODE (FOR SE)</p>
                    <input type="text" name="businesscode" value="<?= htmlspecialchars($business_code) ?>">
                </div>

                <div class="businesscode">
                    <p>MONTHLY SS CONTRIBUTION (FOR SE/OF/NWS)</p>
                    <input type="number" name="monthlysscontribution" value="<?= htmlspecialchars($monthly_ss) ?>">
                </div>

                <div class="businesscode">
                    <p>START OF PAYMENT (FOR SE/NWS)</p>
                    <input type="date" name="startofpayment" value="<?= $start_pay ?>">
                </div>
            </div>

            <div class="mostinnerS1">
                <div class="businesscode">
                    <p>WORKING SPOUSE's MSC (FOR NWS)</p>
                    <input type="number" name="workingspouseMSC" value="<?= htmlspecialchars($spouse_msc) ?>">
                </div>

                <div class="businesscode">
                    <p>APPROVED MSC (FOR SE/OFW/NWS)</p>
                    <input type="number" name="approvedmsc" value="<?= htmlspecialchars($approved_msc) ?>">
                </div>

                <div class="businesscode">
                    <p>FLEXI-FUND APPLICATION (FOR OFW)</p>
                    <div class="innerbusiness">
                        <label>Approved</label>
                        <input type="radio" name="flexiapplication" value="approved" <?= ($flexi_app == 'approved') ? 'checked' : '' ?>>
                        <label>Disapproved</label>
                        <input type="radio" name="flexiapplication" value="disapproved" <?= ($flexi_app == 'disapproved') ? 'checked' : '' ?>>
                    </div>
                </div>
            </div>
        </div>

        <div class="innerpart2S2">
            <div class="outerinnerS2">
                <div class="innerouter1">
                    <div class="inners1">
                        <p>RECEIVED BY (REPRESENTATIVE OFFICE/PARTNER AGENT)</p>
                    </div>
                    <div class="inners2">
                        <div class="signsign">
                            <input type="file" name="signoverprint1">
                            <label>SIGNATURE OVER PRINTED NAME</label>
                        </div>
                        <div class="signsign">
                            <input type="date" name="dateandtime1" value="<?= $date_rec ?>">
                            <label>DATE & TIME</label>
                        </div>
                    </div>
                </div>

                <div class="innerouter2">
                    <div class="inners1">
                        <p>RECEIVED & PROCESSED BY (MSS, BRANCH/SERVICEOFFICE/FORIEGN OFFICE)</p>
                    </div>
                    <div class="inners2">
                        <div class="signsign">
                            <input type="file" name="signoverprint2">
                            <label>SIGNATURE OVER PRINTED NAME</label>
                        </div>
                        <div class="signsign">
                            <input type="date" name="dateandtime2" value="<?= $date_proc ?>">
                            <label>DATE & TIME</label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="outerinnerS3">
                <div class="inners1">
                    <p>REVIEWED BY (REPRESENTATIVE OFFICE/PARTNER AGENT)</p>
                </div>
                <div class="inners2">
                    <div class="signsign">
                        <input type="file" name="signoverprint3"> <label>SIGNATURE OVER PRINTED NAME</label>
                    </div>
                    <div class="signsign">
                        <input type="date" name="dateandtime3" value="<?= $date_rev ?>"> <label>DATE & TIME</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<input type="hidden" name="reg_id" value="<?= htmlspecialchars($id) ?>">
<input type="submit" name="submitinformation" value="SUBMIT" id="submitbutn" class="submitbuttn">

    </form>

    <script src="index.js"></script>
  </body>
</html>
