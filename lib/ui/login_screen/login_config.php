<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "water_wise";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process the login form submission
if (isset($_POST['email']) && isset($_POST['password'])) {
    $username = $_POST['email'];
    $password = $_POST['password'];

    // Query to validate the user's credentials
    $sql = "SELECT * FROM user WHERE email = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    // Check if the query returned any rows
    if ($result->num_rows > 0) {
        // Login successful
        echo "Login successful!";
    } else {
        // Login failed
        echo "Invalid username or password!";
    }
}
$conn->close();
?>