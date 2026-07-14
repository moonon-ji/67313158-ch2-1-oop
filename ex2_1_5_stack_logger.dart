//สร้าง mixin Loggable ที่มีเมธอด log(String msg) สำหรับพิมพ์ข้อความพร้อมเวลาปัจจุบัน
mixin Loggable {
  void log(String msg) {
    print("[${DateTime.now()}] $msg"); //สั่งแสดงข้อความออกหน้าจอ
  }
}

//สร้างคลาสชื่อ Stack และใช้ with Loggable เพื่อนำ log() ของMixin มาใช้ได้ทันที
class Stack<T> with Loggable {
  final List<T> _items = [];

//สร้างเมธอด push() เพื่อใช้เพิ่มข้อมูลเข้า Stack
  void push(T item) {
    _items.add(item); //เพิ่มข้อมูลเข้า List
    log("Push: $item");
  }

//เมธอด pop() ใช้ดึงข้อมูลตัวบนสุดออก อาจคืนค่า null
  T? pop() { 
    if (_items.isEmpty) { //ตรวจสอบว่า List ว่างไหม
      log("Stack is empty");
      return null;
    }

    T item = _items.removeLast(); //ถ้าไม่ว่างลบสมาชิกตัวสุดท้าย
    log("Pop: $item");
    return item;
  }

  void display() {  //สร้างเมธอด display() ใช้แสดงข้อมูลทั้งหมด
    print(_items);
  }
}

void main() {
  Stack<int> stack = Stack<int>();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  stack.display();

  stack.pop();

  stack.display();
}