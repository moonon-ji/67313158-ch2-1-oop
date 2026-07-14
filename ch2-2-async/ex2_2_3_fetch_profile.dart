Future<Map<String, dynamic>> fetchProfile(int userId)async{
  await Future.delayed(Duration(seconds: 2));

  if (userId <=0){ //ตรวจสอบว่า ถ้า userId น้อยกว่าหรือเท่ากับ 0 ให้ throw Exception
    throw Exception('User ID ไม่ถูกต้อง');
  }else{ //แต่ถ้าถูกต้องให้คืนข้อมูลโปรไฟล์
  return {
    "id": userId,
    "name": "Somchai",
    "age": 20,
  };
}
}
void main() async {
  try {
    var profile = await fetchProfile(1);

    print("ข้อมูลผู้ใช้");
    print(profile);
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e");
  } finally { //finally ทำงานเสมอ ไม่ว่าจะเกิดข้อผิดพลาดหรือไม่
    print("สิ้นสุดการทำงาน");
  }
}  