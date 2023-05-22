<?php
// Import file kết nối cơ sở dữ liệu
require_once 'db_connection.php';

if (isset($_POST['submit'])) {
    // Lấy dữ liệu từ form
    $StudentID = $_POST['StudentID'];
    $AttendanceStatus = $_POST['AttendanceStatus'];

    // Kiểm tra xem Sinh viên có tồn tại trong cơ sở dữ liệu hay không
    $sql_check_student = "SELECT * FROM Student WHERE StudentID = '$StudentID'";
    $result_check_student = $conn->query($sql_check_student);

    if ($result_check_student->num_rows > 0) {
        // Sinh viên tồn tại, tiến hành điểm danh
        $sql_attendance = "INSERT INTO Attendance (ClassesID, StudentID, AttendanceStatus) VALUES ('$ClassesID', '$StudentID', '$AttendanceStatus')";

        if ($conn->query($sql_attendance) === TRUE) {
            echo "Success!";
        } else {
            echo "Fail: " . $conn->error;
        }
    } else {
        echo "No student data.";
    }
}

// Đóng kết nối
$conn->close();
?>
