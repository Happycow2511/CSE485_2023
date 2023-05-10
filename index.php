<form method="post" action="save_student.php">
    <label for="first_name">First Name:</label>
    <input type="text" name="first_name" id="first_name" required><br>

    <label for="last_name">Last Name:</label>
    <input type="text" name="last_name" id="last_name" required><br>

    <label for="age">Age:</label>
    <input type="number" name="age" id="age" required><br>

    <label for="gender">Gender:</label>
    <select name="gender" id="gender">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
    </select><br>

    <input type="submit" value="Submit">
</form>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy thông tin từ form
    $first_name = $_POST["first_name"];
    $last_name = $_POST["last_name"];
    $age = $_POST["age"];
    $gender = $_POST["gender"];

    // Mở file để ghi
    $file = fopen("students.csv", "a");

    // Ghi thông tin sinh viên vào file
    fputcsv($file, [$first_name, $last_name, $age, $gender]);

    // Đóng file
    fclose($file);

    // Chuyển hướng về trang chủ hoặc hiển thị thông báo thành công
    header("Location: index.html");
    exit();
}
?>