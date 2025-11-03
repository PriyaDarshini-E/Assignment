const form = document.getElementById('myForm');

form.addEventListener('submit', (e) => {
    e.preventDefault();

    // Destructuring form values
    const { uname, email, password, age, mobile, about, gender } = form;

    // Spread operator example (collecting all values)
    const fields = [uname.value, email.value, password.value, age.value, mobile.value, about.value, gender.value];

    // Check for empty fields
    if (fields.some(field => field.trim() === "")) {
        alert("All fields are required!");
        return;
    }

    // Email validation (no regex)
    if (!email.value.includes('@') || !email.value.includes('.') || email.value.startsWith('@') || email.value.endsWith('.')) {
        alert("Please enter a valid email (no regex used).");
        return;
    }

    // Password check
    if (password.value.length !== 8) {
        alert("Password must be exactly 8 characters!");
        return;
    }

    // Age check
    if (+age.value <= 18) {
        alert("Age must be above 18!");
        return;
    }

    // Mobile check
    if (mobile.value.length !== 10 || isNaN(mobile.value)) {
        alert("Mobile number must be 10 digits!");
        return;
    }

    // Text area check
    if (about.value.length < 20) {
        alert("About section must have at least 20 characters!");
        return;
    }

    // Gender check
    if (gender.value !== "male" && gender.value !== "female") {
        alert("Please select male or female!");
        return;
    }

    // If all good
    alert("Form successfully validated! Moving to next page...");

    // Simulate moving to next page
    // window.location.href = "nextpage.html";  // Uncomment if needed

    // Rest operator example - clearing all fields
    const clearFields = (...inputs) => inputs.forEach(input => input.value = "");
    clearFields(email, password, age, mobile, about, gender);
});