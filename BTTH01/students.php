<?php

    // Lớp Sinh viên
class Student {
    public $name;
    public $student_id;
    public $age;

    public function __construct($name, $student_id, $age) {
        $this->name = $name;
        $this->student_id = $student_id;
        $this->date_of_birth = $age;
    }
}

// Lớp Danh sách Sinh viên (StudentDAO)
class StudentDAO {
    public $students = [];

    public function add_student($student) {
        $this->students[] = $student;
    }

    public function get_student_by_id($student_id) {
        foreach ($this->students as $student) {
            if ($student->student_id == $student_id) {
                return $student;
            }
        }
        return null;
    }

    public function get_all_students() {
        return $this->students;
    }

    public function update_student($student_id, $name=null, $age=null) {
        foreach ($this->students as $student) {
            if ($student->student_id == $student_id) {
                if ($name) {
                    $student->name = $name;
                }
                if ($age) {
                    $student->age = $age;
                }

                return true;
            }
        }
        return false;
    }

    public function delete_student($student_id) {
        foreach ($this->students as $key => $student) {
            if ($student->student_id == $student_id) {
                unset($this->students[$key]);
                return true;
            }
        }
        return false;
    }
}
?>