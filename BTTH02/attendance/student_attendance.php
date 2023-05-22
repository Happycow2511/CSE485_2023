<!DOCTYPE html>
<html>
<head>
    <title>Student Attendance</title>
</head>
<body>
    <h2>Student Attendance</h2>
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
</body>
</html>
