import 'dart:io';

void main() {
  // ctrl + J => dart demo.dart
  var dung = true;
  var sai = false;

  // input
  var number = int.parse(
    stdin.readLineSync().toString(),
  ); // nhập vào number = "1"

  // lệnh điều kiện
  if (number <= 1 || number >= 1) {
    // => true  điều kiện đúng
    // lệnh trong đây chạy
    print("điều kiện hợp lệ");
  } else {
    // output
    print("sai mới chạy");
  }

  // bài 1:
  var a = 0;
  var b = 0;

  if (a != b) {
    print("a không bằng b");
  } else {
    print("a bằng b");
  }

  // toán tử 3 ngôi
  a != b ? print("a không bằng b") : print("a bằng b");

  // bài 1:
  var x = 0;
  var y = 0;

  if (x > y) {
    print("x lớn hơn y ");
  } else if (x < y) {
    print("x bé hơn y");
  } else {
    print("x bằng y");
  }

  var p = 0.5; // 0,5
  var q = 0.5;

  if (p <= q) {
    print("p bé hơn hoặc bằng q");
  } else {
    print("p lớn hơn q");
  }

  var kiemTraSo = 3;
  var soA = kiemTraSo == 3 ? kiemTraSo : 1;

  // if (kiemTraSo == 3) {
  //   soA = kiemTraSo;
  // } else {
  //   soA = 1;
  // }

  if (number == 0) {
    soA = 0;
  }
  if (number == 1) {
    soA = 1;
  }
  if (number == 2) {
    soA = 2;
  }
  if (number == 3) {
    soA = 3;
  }
  if (number == 4) {
    soA = 4;
  }
  // number = 10

  switch (number) {
    case 0:
      soA = 0;
      break;

    case 1:
      soA = 1;
      break;

    case 2:
      soA = 2;
      break;

    case 3:
      soA = 3;
      break;

    case 4:
      soA = 4;
      break;

    default: // không thỏa case nào thì kích hoạt
      soA = 10;
  }

  // bài tập Quản Lý Điểm Sinh Viên

  var hoTen = "Tony Starr";
  var diemToan = 10;
  var diemLy = 10;
  var diemHoa = 2;
  // điểm trung bình = 7.333
  // return => dừng tại vị trí đó
 
 
  if (diemToan < 4) {
    print("Trượt môn Toán");
    return;
  }
  if (diemHoa < 4) {
    print("Trượt môn Hóa");
    return;
  }
  if (diemLy < 4) {
    print("Trượt môn Lý");
    return;
  }

  var diemTB = (diemLy + diemHoa + diemToan) / 3;

  if (diemTB >= 8) {
    print("Giỏi");
  }

  if (diemTB >= 6.5 && diemTB < 8) {
    print("Khá");
  }

  if (diemTB >= 5 && diemTB < 6.5) {
    print("Trung Bình");
  }

  if (diemTB < 5) {
    print("Yếu");
  }
}
