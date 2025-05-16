import 'dart:math';

void main() {
  // Ctrl + J

  // print("Hello world !"); // output

  // chữ (chuỗi): Có ngoặc kép, ngoặc đơn
  // số (number): 0 1 2 3 4 5 6 7 8 9

  // Variables:  biến
  // làm ơn kết thúc bằng dấu chấm phẩy ";"
  var bienDemo = "Hello world !" + 3.toString();
  bienDemo = "hello dart";

  // không cho phép thay đổi giá trị
  const BIEN_DEMO_2 = 1;
  // BIEN_DEMO_2 = 2;

  const a = 2;
  const b = 3;
  const tong = a + b;

  // in ra terminal
  // print(tong);

  // số nguyên: 1   3   4    5   5
  // số thực, số thập phân: 1.4    5.6    7.2
  // print(9 / 2); // 4.5

  var dai = 2;
  var rong = 3;
  var chuVi = (dai + rong) * 2;
  var dienTich = dai * rong;

  // nối chuỗi
  // print(
  //   " Chu vi hình chữ nhật " +
  //       chuVi.toString() +
  //       ", Diện tích: " +
  //       dienTich.toString(),
  // );
  // template string
  // print(" Chu vi hình chữ nhật ${(dai + rong) * 2} , Diện tích: $dienTich");

  var canhA = 1;
  var canhB = 2;
  var canhC = 3;
  var cao = 4;

  var chuViTamGiac = canhA + canhB + canhC;
  var dienTichTamGiac = canhC * cao * 1 / 2;

  // x = -b/a;
  var soA = 3;
  var soB = 5;
  var kq = -soB / soA;

  // aX*X + b = 0
  // X = √(-b/a)

  kq = sqrt(-soB / soA);

  // chuyển đổi kiểu dữ liệu => convert

  var number = 2;
  // number = number.toString(); // => "2"

  var chuoi = "2";
  int.parse(chuoi); // => 2

  // print(int.parse(chuoi)); // 32

  var x = 2;
  x = x + 1;
  x += 1;
  ++x;
  x++;

  x = x - 1;
  x -= 1;
  --x;
  x--;

  // x=2 , y=3
  var y = 3;
  // demo
  y = ++x + 3; // x=3 + y=3
  print(y); // dòng 1
  print(x);

  y = x++ + 3; // x=3 + y=3 => x=4
  print(y); // dòng 2
  print(x);
} 

// github
