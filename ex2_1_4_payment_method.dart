//สร้างAbstract Class PaymentMethod มีเมธอดนามธรรม pay(double amount)
abstract class PaymentMethod {
  void pay(double amount);
}

//สร้างคลาส CreditCard, PromptPay, และ CashOnDelivery ที่ implement วิธีชำระเงินของตนเอง
//ใช้ implements เพราะ ทุก Class เป็น Interface ได้
// ไม่ใช้ extend เพราะ  Dart รองรับการสืบทอดจากคลาสแม่ได้เพียงคลาสเดียว

class CreditCard implements PaymentMethod { 
  @override 
  void pay(double amount) {
    print("ชำระ $amount บาท ผ่านบัตรเครดิต");
  }
}

class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระ $amount บาท ผ่าน PromptPay");
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระ $amount บาท แบบเก็บเงินปลายทาง");
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  for (var payment in payments) {
    payment.pay(1500);
  }
}