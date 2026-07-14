
Future<void> main() async { //ใส่async เพื่อคืนค่าเป็น future
  print("1. เริ่ม");

  await Future.delayed(Duration(seconds: 3)); //ใส่ await เพื่อรอจังหวะหน่วงโดยที่ไม่ต้องข้ามไปทำขั้นตอนอื่น

  print("2. โหลดเสร็จ");

  print("3. จบ");
}