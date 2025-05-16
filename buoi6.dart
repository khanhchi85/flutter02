/*void main() {
  int n = 100; 
  int sum = 0; 

    for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print('Tổng các số từ 1 đến $n là: $sum');
}


void main() {
  int n = 9; 

  for (int i = 1; i <= 10; i++) {
    print('$n x $i = ${n * i}');
  }
}

void main() {
  int n = 10; 
  int evenCount = 0; 
  int oddCount = 0; 
  int i = 1; 

  while (i <= n) {
    if (i % 2 == 0) {
      evenCount++; 
    } else {
      oddCount++; 
    }
    i++;
  }

  print('Số lượng số chẵn từ 1 đến $n: $evenCount');
  print('Số lượng số lẻ từ 1 đến $n: $oddCount');
}

void main() {
  int n = 10; 
  int factorial = 1; 

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  print('Giai thừa của $n là: $factorial');
}

void main() {
  int n = 5; 

  while (n >= 1) {
    print(n);
    n--;
  }
}

void main() {
  int n = 12345; 
  int reversed = 0; 

  while (n > 0) {
    int digit = n % 10; 
    reversed = reversed * 10 + digit; 
    n ~/= 10; 
  }
  print('Số đảo ngược là: $reversed');
}
*/
void main() {
  int number = 17; 
  bool result = isPrime(number); 
if (result) {
    print('$number là số nguyên tố.');
  } else {
    print('$number không phải là số nguyên tố.');
  }
}
bool isPrime(int n) {
if (n <= 1) {
    return false;
  }
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false; 
    }
  }

  return true; 
}