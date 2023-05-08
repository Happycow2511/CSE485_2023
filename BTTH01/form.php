<?php

// Đường dẫn đến file dữ liệu sinh viên
$file_path = "students.txt";

// Mở tập tin và đọc nội dung
$file_contents = file($file_path);

// Danh sách sinh viên
$student_list = array();

// Lặp qua các dòng dữ liệu và chia các trường
foreach ($file_contents as $line) {
  // Chia các trường bằng dấu phẩy
  $fields = explode(",", $line);

  // Tạo một mảng chứa thông tin sinh viên
  $student = array(
    "id" => $fields[0],
    "name" => $fields[1],
    "age" => $fields[2],
    "grade" => $fields[3]
  );

  // Thêm sinh viên vào danh sách sinh viên
  array_push($student_list, $student);
}

// Hiển thị danh sách sinh viên
foreach ($student_list as $student) {
  echo "ID: " . $student["id"] . "<br>";
  echo "Name: " . $student["name"] . "<br>";
  echo "Age: " . $student["age"] . "<br>";
  echo "Grade: " . $student["grade"] . "<br><br>";
}

?>
