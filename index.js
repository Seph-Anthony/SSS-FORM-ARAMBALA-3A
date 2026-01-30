document.addEventListener("DOMContentLoaded", function () {
  const checkbox = document.querySelector('input[name="samehomeaddress"]');
  const homeAddressSection = document.getElementById("home-address-section");

  checkbox.addEventListener("change", function () {
    if (this.checked) {
      homeAddressSection.style.display = "none";
    } else {
      homeAddressSection.style.display = "block";
    }
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const civilStatusRadios = document.querySelectorAll(
    'input[name="civilstatus"]',
  );
  const reasonforother = document.getElementById("forhidingreason");

  civilStatusRadios.forEach((radio) => {
    radio.addEventListener("change", function () {
      if (this.value === "others") {
        reasonforother.style.display = "flex";
      } else {
        reasonforother.style.display = "none";
      }
    });
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form");

  form.addEventListener("submit", function (event) {
    let errors = [];

    const reasonText = document
      .querySelector('input[name="reasonforother"]')
      .value.trim();
    const lastName = document
      .querySelector('input[name="lastname"]')
      .value.trim();
    const firstName = document
      .querySelector('input[name="firstname"]')
      .value.trim();
    const dob = document.querySelector('input[name="dateofbirth"]').value;
    const gender = document.querySelector('input[name="gender"]:checked');
    const civilStatus = document.querySelector(
      'input[name="civilstatus"]:checked',
    );
    const nationality = document
      .querySelector('input[name="nationality"]')
      .value.trim();
    const email = document
      .querySelector('input[name="emailaddress"]')
      .value.trim();
    const mobile = document
      .querySelector('input[name="mobilenumber"]')
      .value.trim();

    const sameAddressChecked = document.querySelector(
      'input[name="samehomeaddress"]',
    ).checked;
    const pob = document
      .querySelector('input[name="city&province"]')
      .value.trim();

    if (lastName === "") {
      errors.push("Last Name is required.");
    }
    // if (lastName === "") errors.push("Last Name is required.");
    if (firstName === "") errors.push("First Name is required.");
    if (dob === "") errors.push("Date of Birth is required.");
    if (!gender) errors.push("Sex selection is required.");
    if (!civilStatus) errors.push("Civil Status selection is required.");
    if (nationality === "") errors.push("Nationality is required.");
    if (pob === "") errors.push("Place of Birth is required.");

    if (mobile === "") {
      errors.push("Mobile Number is required.");
    } else if (mobile.length < 11) {
      errors.push("Please enter a valid 11-digit mobile number.");
    }
    if (civilStatus && civilStatus.value === "others" && reasonText === "") {
      errors.push(
        "Please provide a reason for selecting 'Others' in Civil Status.",
      );
    }

    if (email === "") {
      errors.push("E-mail Address is required.");
    } else if (!email.includes("@") || !email.includes(".")) {
      errors.push("Please enter a valid email address.");
    }

    if (errors.length > 0) {
      event.preventDefault(); //PARA ANG PHP MO STOP OG RUN HAHAHA
      alert("Oops! Please correct the following:\n" + errors.join("\n"));
    }
  });
});
