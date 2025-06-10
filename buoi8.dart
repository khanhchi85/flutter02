class ShoppingCart {
 
  List<Map<String, dynamic>> cart = [];

  
  void addProduct(String name, int quantity, double price) {
    cart.add({
      'name': name,
      'quantity': quantity,
      'price': price,
    });
    print("Đã thêm $name vào giỏ hàng!");
  }

  
  void editProduct(String name, int newQuantity, double newPrice) {
    for (var item in cart) {
      if (item['name'] == name) {
        item['quantity'] = newQuantity;
        item['price'] = newPrice;
        print("Đã sửa sản phẩm $name!");
        return;
      }
    }
    print("Không tìm thấy sản phẩm $name trong giỏ hàng!");
  }

  
  void removeProduct(String name) {
    for (var item in cart) {
      if (item['name'] == name) {
        cart.remove(item);
        print("Đã xóa sản phẩm $name khỏi giỏ hàng!");
        return;
      }
    }
    print("Không tìm thấy sản phẩm $name trong giỏ hàng!");
  }

  
  void displayCart() {
    if (cart.isEmpty) {
      print("Giỏ hàng trống!");
      return;
    }
    print("Danh sách sản phẩm trong giỏ hàng:");
    for (var item in cart) {
      print("Tên sản phẩm: ${item['name']}");
      print("Số lượng: ${item['quantity']}");
      print("Giá tiền: ${item['price']} VND");
      print("------------------------");
    }
  }

  
  void calculateTotal() {
    double total = 0;
    for (var item in cart) {
      total += item['quantity'] * item['price'];
    }
    print("Tổng số tiền phải thanh toán: $total VND");
  }
}

void main() {
  
  ShoppingCart cart = ShoppingCart();

  
  cart.addProduct("Laptop", 2, 15000000);
  cart.addProduct("Điện thoại", 1, 8000000);
  cart.addProduct("Tai nghe", 3, 500000);

  
  cart.displayCart();

  
  cart.editProduct("Laptop", 1, 16000000);

  
  cart.displayCart();

  
  cart.removeProduct("Tai nghe");

 
  cart.displayCart();

  
  cart.calculateTotal();
}