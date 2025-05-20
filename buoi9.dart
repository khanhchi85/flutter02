/*
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
*/
class BankAccount {
  String accountNumber; 
  String ownerName; 
  double balance; 

  
  BankAccount(this.accountNumber, this.ownerName, this.balance);

  
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Đã gửi $amount vào tài khoản. Số dư mới: $balance');
    } else {
      print('Số tiền gửi phải lớn hơn 0.');
    }
  }

  
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Đã rút $amount từ tài khoản. Số dư mới: $balance');
    } else if (amount <= 0) {
      print('Số tiền rút phải lớn hơn 0.');
    } else {
      print('Số dư không đủ để rút $amount.');
    }
  }

  
  double checkBalance() {
    return balance;
  }

  
  void displayBalance() {
    print('Tài khoản $accountNumber (Chủ tài khoản: $ownerName) - Số dư: $balance');
  }
}

void main() {
  
  BankAccount account = BankAccount('123456789', 'Khanh Chi', 1000.0);

  
  print('--- Kiểm tra hoạt động tài khoản ---');
  account.displayBalance(); 

  account.deposit(500.0); 
  account.withdraw(200.0); 
  account.withdraw(2000.0); 
  account.deposit(-100.0); 
  account.withdraw(0.0); 

  print('\nSố dư cuối cùng: ${account.checkBalance()}');
  account.displayBalance(); 
}