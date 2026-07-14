void startProgram() {
  print("1. เริ่ม");

  Future.delayed(Duration(seconds: 3)).then((value) { //ใช้Future.delayed(Duration(seconds: 3))หน่วงเวลา output ของ"2. โหลดเสร็จ" 3วิ
    print("2. โหลดเสร็จ");
  });

  print("3. จบ");
}

void main() {
  startProgram();
}