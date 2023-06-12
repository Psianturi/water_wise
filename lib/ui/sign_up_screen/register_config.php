<?php
session_start();
$servername = "139.180.136.45";
$username = "root";
$password = "";
$database = "water_wise";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert data into the database
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$_SESSION['email']=$_POST['email'];

$sql = "INSERT INTO users (fname, lname, uname, password, email, mobile, gender, user_type, user_status) VALUES ('$fname','-','-','$password','$email','0','-','3','1')";
if ($conn->query($sql) === TRUE) {
    echo "User registered successfully!";
} else {
    echo "Failed to register user: " . $conn->error;
}

$conn->close();
?>
