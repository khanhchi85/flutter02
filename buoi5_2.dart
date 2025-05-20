class Invoice {
  String productName; 
  int quantity; 
  double unitPrice; 

  
  Invoice(this.productName, this.quantity, this.unitPrice);

  
  double calculateSubtotal() {
    return quantity * unitPrice;
  }

  
  double calculateDiscount(double subtotal) {
    if (subtotal >= 1000000) {
      return subtotal * 0.1; 
    } else if (subtotal >= 500000 && subtotal < 1000000) {
      return subtotal * 0.05; 
    } else {
      return 0.0; 
    }
  }

  
  double calculateVAT(double subtotalAfterDiscount) {
    return subtotalAfterDiscount * 0.08;
  }

  
  double calculateTotal() {
    double subtotal = calculateSubtotal();
    double discount = calculateDiscount(subtotal);
    double subtotalAfterDiscount = subtotal - discount;
    double vat = calculateVAT(subtotalAfterDiscount);
    return subtotalAfterDiscount + vat;
  }

  
  void printInvoice() {
    double subtotal = calculateSubtotal();
    double discount = calculateDiscount(subtotal);
    double subtotalAfterDiscount = subtotal - discount;
    double vat = calculateVAT(subtotalAfterDiscount);
    double total = subtotalAfterDiscount + vat;

    print('--- Hóa đơn bán hàng ---');
    print('Tên sản phẩm: $productName');
    print('Số lượng: $quantity');
    print('Đơn giá: $unitPrice VND');
    print('Thành tiền: $subtotal VND');
    print('Giảm giá: $discount VND');
    print('Thuế VAT (8%): $vat VND');
    print('Tổng thanh toán cuối cùng: $total VND');
  }
}

void main() {
  
  Invoice invoice = Invoice('tempeh', 100, 100000);

  
  invoice.printInvoice();
}