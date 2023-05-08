<?php
    // Lớp Sinh viên
class Student {
    public $name;
    public $student_id;
    public $date_of_birth;
    public $gender;
    public $address;
    public $gpa;

    public function __construct($name, $student_id, $date_of_birth, $gender, $address, $gpa) {
        $this->name = $name;
        $this->student_id = $student_id;
        $this->date_of_birth = $date_of_birth;
        $this->gender = $gender;
        $this->address = $address;
        $this->gpa = $gpa;
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

    public function update_student($student_id, $name=null, $date_of_birth=null, $gender=null, $address=null, $gpa=null) {
        foreach ($this->students as $student) {
            if ($student->student_id == $student_id) {
                if ($name) {
                    $student->name = $name;
                }
                if ($date_of_birth) {
                    $student->date_of_birth = $date_of_birth;
                }
                if ($gender) {
                    $student->gender = $gender;
                }
                if ($address) {
                    $student->address = $address;
                }
                if ($gpa) {
                    $student->gpa = $gpa;
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