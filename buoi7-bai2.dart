class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  
  void displayInfo() {
    print("Tên sản phẩm: $name");
    print("Giá tiền: $price");
    print("Số lượng trong kho: $quantity");
    print("------------------------");
  }

  
  bool sellProduct(int sellQuantity) {
    if (quantity >= sellQuantity) {
      quantity -= sellQuantity;
      print("Bán $sellQuantity $name thành công!");
      print("Số lượng còn lại: $quantity");
      return true;
    } else {
      print("Lỗi: Không đủ số lượng $name trong kho!");
      return false;
    }
  }
}

void main() {
  
  List<Product> products = [
    Product("Laptop", 15000000, 10),
    Product("Điện thoại", 8000000, 20),
    Product("Tai nghe", 500000, 50),
  ];

  
  print("Danh sách sản phẩm:");
  for (var product in products) {
    product.displayInfo();
  }

  
  String searchName = "Laptop"; 
  print("\nTìm kiếm sản phẩm: $searchName");
  bool found = false;
  for (var product in products) {
    if (product.name.toLowerCase() == searchName.toLowerCase()) {
      product.displayInfo();
      found = true;
      break;
    }
  }
  if (!found) {
    print("Không tìm thấy sản phẩm $searchName!");
  }

  
  String productToSell = "Điện thoại"; 
  int quantityToSell = 15; 
  print("\nBán sản phẩm: $productToSell, Số lượng: $quantityToSell");
  found = false;
  for (var product in products) {
    if (product.name.toLowerCase() == productToSell.toLowerCase()) {
      product.sellProduct(quantityToSell);
      found = true;
      break;
    }
  }
  if (!found) {
    print("Lỗi: Không tìm thấy sản phẩm $productToSell!");
  }
}