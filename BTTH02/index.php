<?php
// Kết nối đến cơ sở dữ liệu
$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = 'tailoi123';
$dbName = 'danhsach_sv';

$conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);

if (!$conn) {
    die("Không thể kết nối đến cơ sở dữ liệu: " . mysqli_connect_error());
}

// Xử lý khi sinh viên điểm danh
if (isset($_POST['submit'])) {
    $studentID = $_POST['student_id'];
    $courseID = $_POST['course_id'];
    $attendanceStatus = $_POST['attendance_status'];

    // Kiểm tra xem sinh viên đã điểm danh chưa
    $checkQuery = "SELECT * FROM attendance WHERE student_id = '$studentID' AND coures_id = '$courseID'";
    $checkResult = mysqli_query($conn, $checkQuery);

    if (mysqli_num_rows($checkResult) > 0) {
        // Cập nhật trạng thái điểm danh
        $updateQuery = "UPDATE attendance SET attendance_status = '$attendanceStatus' WHERE student_id = '$studentID' AND course_id = '$coursenID'";
        $updateResult = mysqli_query($conn, $updateQuery);

        if ($updateResult) {
            echo "Cập nhật điểm danh thành công!";
        } else {
            echo "Lỗi: " . mysqli_error($conn);
        }
    } else {
        // Thêm bản ghi mới vào bảng điểm danh
        $insertQuery = "INSERT INTO attendance (student_id, course_id, attendance_status) VALUES ('$student_id', '$courseID', '$attendance_status')";
        $insertResult = mysqli_query($conn, $insertQuery);

        if ($insertResult) {
            echo "Điểm danh thành công!";
        } else {
            echo "Lỗi: " . mysqli_error($conn);
        }
    }
}

// // Hiển thị danh sách buổi học
// $sessionQuery = "SELECT * FROM session";
// $sessionResult = mysqli_query($conn, $sessionQuery);
 $courseQuery = "SELECT * FROM courses";
 $courseResult = mysqli_query($conn, $courseQuery);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Điểm danh sinh viên</title>
</head>
<body>
    <h2>Điểm danh sinh viên</h2>
    <form method="POST" action="login.php">
        <label for="student_id">Mã sinh viên:</label>
        <input type="text" name="student_id" required><br><br>

        <label for="course_id">Môn học</label>
        <select name="course_id" required>
            <?php while ($row = mysqli_fetch_assoc($courseResult)) { ?>
                <option value="<?php echo $row['course_id']; ?>"><?php echo $row['course_title']; ?></option>
            <?php } ?>
        </select><br><br>

        <label for="attendance_status">Trạng thái điểm danh:</label>
        <select name="attendance_status" required>
            <option value="Có mặt">Có mặt</option>
            <option value="Vắng mặt">Vắng mặt</option>
        </select><br><br>

        <input type="submit" name="submit" value="Điểm danh">
    </form>
</body>
</html>

<?php
// Đóng kết nối đến cơ sở dữ liệu
mysqli_close($conn);
?>
