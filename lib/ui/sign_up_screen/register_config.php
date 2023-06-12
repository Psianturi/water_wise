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

$sql = "INSERT INTO users (fname, lname, uname, password, email, mobile, gender, user_type, user_status) VALUES ('$name','-','-','$password','$email',0,'-',3,1)";
if ($conn->query($sql) === TRUE) {
    echo "User registered successfully!";
} else {
    echo "Failed to register user: " . $conn->error;
}
$selectId = "SELECT id FROM users WHERE email='abc@bb.com';";
$result = $conn->query($selectId);
$row = $result->fetch_assoc();
$idValue = $row['email'];
$idInt = intval($idValue);
var_dump($idValue);

$sql2 = "INSERT INTO customer (user_id, region, e_credit, default_payment_method_type) VALUES ($idInt,'-',0,0);";
if ($conn->query($sql2) === TRUE) {
    echo "Success";
} else {
    echo "Failed Bye Lah" . $conn->error;
}

$conn->close();
?>
