<?php
$servername = "localhost";
$username = "root";
$password = "2511";
$dbname = "student_management";

// kết nối đến cơ sở dữ liệu
$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>