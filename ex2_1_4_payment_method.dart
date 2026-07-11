abstract class PaymentMethod {
  void pay(double amount);
}

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