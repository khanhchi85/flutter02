class Employee {
  String name; 
  double hoursWorked; 
  double hourlyRate; 

  
  Employee(this.name, this.hoursWorked, this.hourlyRate);

  
  double calculateBaseSalary() {
    return hoursWorked * hourlyRate;
  }

  
  double calculateAllowance(double baseSalary) {
    if (hoursWorked > 40) {
      return baseSalary * 0.2; 
    }
    return 0.0; 
  }

  
  double calculateTax(double totalSalary) {
    if (totalSalary > 10000000) {
      return totalSalary * 0.1; 
    } else if (totalSalary >= 7000000 && totalSalary <= 10000000) {
      return totalSalary * 0.05; 
    } else {
      return 0.0; 
    }
  }

  
  double calculateNetSalary() {
    double baseSalary = calculateBaseSalary();
    double allowance = calculateAllowance(baseSalary);
    double totalSalaryBeforeTax = baseSalary + allowance;
    double tax = calculateTax(totalSalaryBeforeTax);
    return totalSalaryBeforeTax - tax;
  }

  
  void displaySalaryInfo() {
    double baseSalary = calculateBaseSalary();
    double allowance = calculateAllowance(baseSalary);
    double totalSalaryBeforeTax = baseSalary + allowance;
    double tax = calculateTax(totalSalaryBeforeTax);
    double netSalary = totalSalaryBeforeTax - tax;

    print('Họ tên: $name');
    print('Tổng lương trước thuế: $totalSalaryBeforeTax VND');
    print('Thuế thu nhập: $tax VND');
    print('Lương thực lãnh: $netSalary VND');
  }
}

void main() {
  
  Employee employee = Employee('khanhchi', 160, 100000);

  
  print('--- Thông tin lương nhân viên ---');
  employee.displaySalaryInfo();
}