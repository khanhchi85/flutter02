import 'dart:io';


class Person {
  String id;
  String name;
  int age;
  String gender;

  Person(this.id, this.name, this.age, this.gender);

  void displayInfo() {
    print("ID: $id | Tên: $name | Tuổi: $age | Giới tính: $gender");
  }
}


class Student extends Person {
  String grade;
  List<double> scores;

  Student(String id, String name, int age, String gender, this.grade, this.scores)
      : super(id, name, age, gender);

  double get averageScore => scores.isNotEmpty 
      ? scores.reduce((a, b) => a + b) / scores.length 
      : 0;

  @override
  void displayInfo() {
    super.displayInfo();
    print("Lớp: $grade | Điểm TB: ${averageScore.toStringAsFixed(2)}");
  }
}


class Teacher extends Person {
  String subject;
  double salary;

  Teacher(String id, String name, int age, String gender, this.subject, this.salary)
      : super(id, name, age, gender);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Môn dạy: $subject | Lương: \$${salary.toStringAsFixed(2)}");
  }
}


class Classroom {
  String id;
  String name;
  List<Student> students = [];
  Teacher? teacher;

  Classroom(this.id, this.name);

  void addStudent(Student student) {
    if (!students.contains(student)) {
      students.add(student);
      print("Đã thêm ${student.name} vào lớp $name");
    }
  }

  void assignTeacher(Teacher newTeacher) {
    teacher = newTeacher;
    print("Đã phân công GV ${newTeacher.name} chủ nhiệm lớp $name");
  }

  void displayClassInfo() {
    print("\n=== THÔNG TIN LỚP $name ===");
    print("Mã lớp: $id");
    print("Giáo viên chủ nhiệm:");
    teacher?.displayInfo();
    
    print("\nDanh sách học sinh (${students.length}):");
    for (var student in students) {
      student.displayInfo();
      print("-------------------");
    }
  }
}

void main() {
  
  var student1 = Student("S001", "Nguyễn Văn A", 15, "Nam", "10A1", [8.5, 7.9, 9.2]);
  var student2 = Student("S002", "Trần Thị B", 16, "Nữ", "10A1", [6.8, 8.4, 7.7]);
  
  var teacher1 = Teacher("T001", "Lê Thị C", 35, "Nữ", "Toán", 1500);
  
  var classroom = Classroom("C001", "Lớp 10A1");
  
  
  classroom.addStudent(student1);
  classroom.addStudent(student2);
  classroom.assignTeacher(teacher1);
  
  
  classroom.displayClassInfo();
}
