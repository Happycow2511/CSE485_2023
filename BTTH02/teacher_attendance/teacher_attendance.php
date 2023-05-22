<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <h2>Student Management</h2>
    
    <!-- Điểm danh Sinh viên form -->
    <h3>Student Attendance</h3>
    <form action="attendance.php" method="post">
        <label for="StudentID">Student ID:</label>
        <input type="text" name="studentid" id="studentid" required><br><br>
        <label for="AttendanceStatus">Attendance Status:</label>
        <select name="AttendanceStatus" id="AttendanceStatus">
            <option value="present">Present</option>
            <option value="miss">Miss</option>
        </select><br><br>
        <input type="submit" name="submit" value="Done">
    </form>
    
    <!-- Tổng hợp Sinh viên vắng -->
    <h3>Student miss</h3>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Full Name</th>
            <th>Email</th>
        </tr>
        <?php
        // Import file kết nối cơ sở dữ liệu
        require_once 'db_connection.php';

        // Truy vấn danh sách Sinh viên vắng
        $sql_student_miss = "SELECT Student.StudentID, Student.Name, Student.Email
                             FROM Student
                             LEFT JOIN Attendance ON Student.StudentID = Attendance.StudentID
                             WHERE Attendance.Status = 'miss'";
        $result_student_miss = $conn->query($sql_student_miss);

        if ($result_student_miss->num_rows > 0) {
            while ($row = $result_student_miss->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["StudentID"] . "</td>";
                echo "<td>" . $row["Name"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='3'>There are no student miss.</td></tr>";
        }
        ?>
    </table>

    <!-- Tổng hợp Sinh viên có mặt -->
    <h3>Student present</h3>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <?php
        // Truy vấn danh sách Sinh viên có mặt
        $sql_student_present = "SELECT Student.StudentID, Student.Name, Student.Email
                             FROM Student
                             LEFT JOIN Attendance ON Student.StudentID = Attendance.StudentID
                             WHERE Attendance.Status = 'present'";
        $result_student_present = $conn->query($sql_student_present);

        if ($result_student_present->num_rows > 0) {
            while ($row = $result_student_present->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["StudentID"] . "</td>";
                echo "<td>" . $row["Name"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='3'>There are no student present.</td></tr>";
        }

        // Đóng kết nối
        $conn->close();
        ?>
    </table>
</body>
</html>
