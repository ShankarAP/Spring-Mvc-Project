<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

form {
    width: 400px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

fieldset {
    border: none;
    padding: 0;
    margin: 0;
}

legend {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
}

input[type="text"],
input[type="email"],
input[type="number"],
input[type="date"],
button {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.cancel-button {
    background-color: #dc3545;
}

.cancel-button:hover {
    background-color: #c82333;
}

</style>
<script>
function validateForm() {
    var id = document.getElementById("id").value.trim();
    var name = document.getElementById("name").value.trim();
    var email = document.getElementById("email").value.trim();
    var number = document.getElementById("number").value.trim();
    var dob = document.getElementById("dob").value.trim();
    var location = document.getElementById("location").value.trim();

    // Basic validation
    if (id === "" || name === "" || email === "" || number === "" || dob === "" || location === "") {
        alert("All fields are required.");
        return false;
    }

    // Validate email format
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Validate number format
    var numberRegex = /^\d+$/;
    if (!numberRegex.test(number)) {
        alert("Please enter a valid number.");
        return false;
    }

    // Additional validation rules can be added as needed

    // If all validations pass, the form can be submitted
    return true;
}

function resetForm() {
    document.getElementById("registrationForm").reset();
}


document.getElementById('myForm').addEventListener('submit', function(event) {
    // Prevent the form from submitting
    event.preventDefault();
    
    // Get the input value
    var number = document.getElementById('numberInput').value;
    
    // Check if the input is exactly ten digits
    if (number.length === 10) {
        alert('Valid ten-digit number!');
        // Here you can submit the form or do something else
    } else {
        alert('Please enter exactly ten digits!');
    }
});


document.getElementById('myForm').addEventListener('submit', function(event) {
    // Prevent the form from submitting
    event.preventDefault();
    
    // Get the input value
    var dob = new Date(document.getElementById('dobInput').value);
    
    // Calculate today's date
    var today = new Date();
    
    // Calculate date 21 years ago
    var minDOB = new Date(today.getFullYear() - 21, today.getMonth(), today.getDate());
    
    // Check if the date of birth is above 21 years
    if (dob <= minDOB) {
        alert('You are above 21 years old.');
        // Here you can submit the form or do something else
    } else {
        alert('You must be at least 21 years old.');
    }
});

</script>

</head>
<body>
<form action="insert">
<fieldset>
<legend>USER REGISTRATION</legend>
<input type="text" name="id" placeholder="enter id" ><br><br>
<input type="text" name="name" placeholder="enter name"><br><br>
<input type="email" name="email" placeholder="enter email"><br><br>
<input type="number" name="number" placeholder="enter number"><br><br>
<input type="date" name="dob" placeholder="enter dob"><br><br>
<input type="text" name="location" placeholder="enter location"><br><br>
<input type="file" name="files" placeholder="upload CV"><br><br>
<button>submit</button>
<button>cancel</button>
</fieldset>
</form>
</body>
</html>