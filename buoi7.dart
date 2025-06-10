class Student {
  String name;
  double mathScore;
  double physicsScore;
  double chemistryScore;

  Student(this.name, this.mathScore, this.physicsScore, this.chemistryScore);

  
  double getAverageScore() {
    return (mathScore + physicsScore + chemistryScore) / 3;
  }

  
  String getGrade() {
    double avg = getAverageScore();
    if (avg < 5) return "Kém";
    else if (avg >= 5 && avg < 7) return "Khá";
    else if (avg >= 7 && avg < 9) return "Giỏi";
    else return "Xuất sắc";
  }

  
  void displayInfo() {
    print("Họ tên: $name");
    print("Điểm Toán: $mathScore");
    print("Điểm Lý: $physicsScore");
    print("Điểm Hóa: $chemistryScore");
    print("Điểm trung bình: ${getAverageScore().toStringAsFixed(2)}");
    print("Xếp loại: ${getGrade()}");
    print("------------------------");
  }
}

void main() {
 
  List<Student> students = [
    Student("Nguyễn Văn A", 8.5, 7.0, 9.0),
    Student("Trần Thị B", 6.5, 7.5, 8.0),
    Student("Lê Văn C", 9.5, 9.0, 9.8),
  ];

  
  print("Danh sách sinh viên:");
  for (var student in students) {
    student.displayInfo();
  }

 
  Student topStudent = students[0];
  for (var student in students) {
    if (student.getAverageScore() > topStudent.getAverageScore()) {
      topStudent = student;
    }
  }

  print("Sinh viên có ĐTB cao nhất:");
  topStudent.displayInfo();
}