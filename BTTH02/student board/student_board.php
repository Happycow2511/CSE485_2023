<?php
// Import file kết nối cơ sở dữ liệu
require_once 'db_connection.php';

// Truy vấn dữ liệu từ bảng Student
$sql = "SELECT * FROM Student";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>College Students</title>
</head>
<body>
    <h2>College Students</h2>
    <table>
        <tr>
            <th>Student ID</th>
            <th>FullName</th>
            <th>Date Of Birth</th>
            <th>Email</th>
            <th>Contact Info</th>
        </tr>
        <?php
        // Kiểm tra và xử lý kết quả truy vấn
        if ($result->num_rows > 0) {
            // Duyệt qua từng dòng dữ liệu
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["StudentID"] . "</td>";
                echo "<td>" . $row["Name"] . "</td>";
                echo "<td>" . $row["DateOfBirth"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "<td>" . $row["ContactInfo"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No data.</td></tr>";
        }
        ?>
    </table>
</body>
</html>

<?php
// Đóng kết nối
$conn->close();
?>
