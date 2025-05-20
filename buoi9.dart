class Student {
  int id; 
  String name; 
  int age; 
  double grade; 

  
  Student(this.id, this.name, this.age, this.grade);

 
  void displayInfo() {
    print('Mã số: $id, Tên: $name, Tuổi: $age, Điểm: $grade');
  }
}

class StudentManager {
  List<Student> students = []; 

  
  void addStudent(int id, String name, int age, double grade) {
    students.add(Student(id, name, age, grade));
    print('Đã thêm sinh viên: $name');
  }

  
  void displayAllStudents() {
    if (students.isEmpty) {
      print('Danh sách sinh viên trống.');
    } else {
      print('Danh sách sinh viên:');
      for (var student in students) {
        student.displayInfo();
      }
    }
  }

  
  void findStudentById(int id) {
    for (var student in students) {
      if (student.id == id) {
        print('Tìm thấy sinh viên:');
        student.displayInfo();
        return;
      }
    }
    print('Không tìm thấy sinh viên với mã số $id.');
  }
}

void main() {
  
  print('--- Thông tin sinh viên ---');
  Student student = Student(112233, 'khanhchi', 20, 12.0);
  student.displayInfo();

  
  print('\n--- Quản lý danh sách sinh viên ---');
  StudentManager manager = StudentManager();

  
  manager.addStudent(112233, 'khanhchi', 20, 12.0);
  manager.addStudent(223344, 'minhthu', 19, 15.5);
  manager.addStudent(334455, 'hoanglong', 21, 10.0);

  
  print('\n');
  manager.displayAllStudents();

  
  print('\n');
  manager.findStudentById(112233);
  print('\n');
  manager.findStudentById(999999); 
}