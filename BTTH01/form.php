<?php

$students = array(); // Khởi tạo mảng danh sách sinh viên

// Mở file CSV để đọc dữ liệu
if (($handle = fopen("student.csv", "r")) !== FALSE) {
    // Đọc từng dòng dữ liệu từ file
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        // Thêm thông tin sinh viên vào mảng
        $student = array(
            'id' => $data[0],
            'name' => $data[1],
            'age' => $data[2],
            'grade' => $data[3]
        );
        array_push($students, $student);
    }
    fclose($handle); // Đóng file
}

// Hiển thị danh sách sinh viên lên trang web
foreach ($students as $student) {
    echo "<p>ID: " . $student['id'] . "</p>";
    echo "<p>Name: " . $student['name'] . "</p>";
    echo "<p>Age: " . $student['age'] . "</p>";
    echo "<p>Grade: " . $student['grade'] . "</p>";
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Add Student</title>
</head>
<body>
	<h1>Add Student</h1>
	<form method="post" action="form.php">
		<label for="id">ID:</label>
		<input type="text" name="id" id="id"><br><br>
<label for="name">Name:</label>
<input type="text" name="name" id="name"><br><br>
<label for="age">Age:</label>
<input type="text" name="age" id="age"><br><br>
<label for="grade">Grade:</label>
<input type="text" name="grade" id="grade"><br><br>
<input type="submit" name="submit" value="Add Student">
</form>

</body>
</html>

<?php

if (isset($_POST['submit'])) {
    // Lấy thông tin sinh viên từ form
    $id = $_POST['id'];
    $name = $_POST['name'];
    $age = $_POST['age'];
    $grade = $_POST['grade'];

    // Mở file CSV để ghi dữ liệu
    $handle = fopen("student.csv", "a");
    // Ghi thông tin sinh viên vào file CSV
    $line = array($id, $name, $age, $grade);
    fputcsv($handle, $line);
    fclose($handle); // Đóng file

    // Chuyển hướng về trang hiển thị danh sách sinh viên
    header('Location: form.php');
    exit;
}

?>
