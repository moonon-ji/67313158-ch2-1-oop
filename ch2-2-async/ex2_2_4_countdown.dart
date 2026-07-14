//ฟังก์ชัน Stream ชื่อ countdown(int from) ที่ใช้ async* และ yield
Stream<String> countdown(int from) async* { //สร้าง Sterm โดยใช้ async* 
  for (int i = from; i >= 0; i--) {
    yield i.toString(); //ใช้ yield เพื่อ "ปล่อย" ค่าออกมาทีละตัว และ ใช้.toString เพื่อเปลี่ยนtype เป็น String
    await Future.delayed(Duration(seconds: 1));
  }
  yield "หมดเวลา!";
}

void main() async {
  await for (var message in countdown(5)) { 
    print(message);
  }
}