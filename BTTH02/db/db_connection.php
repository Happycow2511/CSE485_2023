<?php
$servername = "localhost"; 
$username = "root";  
$password = "2511";  
$database = "student_management";  

// Tạo đối tượng kết nối PDO
try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // Đặt chế độ lỗi PDO để hiển thị thông báo lỗi
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>