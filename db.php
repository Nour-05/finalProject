<?php
$servername = "localhost";
$username = "root";       // or your app user
$password = "password";   // replace with your MySQL password
$dbname = "coffeeshop";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>