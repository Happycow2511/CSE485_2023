class Student {
    public $name;
    public $age;
    public $major;

    public function __construct($name, $age, $major) {
        $this->name = $name;
        $this->age = $age;
        $this->major = $major;
    }
}

$students = array();

$file_content = file('students.txt');
foreach ($file_content as $line) {
    $student_info = explode(',', $line);
    $student = new Student(trim($student_info[0]), intval($student_info[1]), trim($student_info[2]));
    $students[] = $student;
}

