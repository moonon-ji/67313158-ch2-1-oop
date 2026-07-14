import 'dart:async';

void main() async {
  StreamController<String> controller = StreamController<String>(); //StreamController ใช้สร้างและควบคุม Stream

  controller.stream.listen( //ใช้.listen() รับข้อมูลจาก Stream
    (message) {
      print("แจ้งเตือน: $message");
    },
    onDone: () { // onDone ทำงานเมื่อปิด Stream
      print("สตรีมสิ้นสุด");
    },
  );

  controller.add("มีข้อความใหม่"); //ใช้ .add() ส่งข้อมูลเข้าสู่ Stream
  controller.add("มีอีเมลเข้า");
  controller.add("ดาวน์โหลดเสร็จ");

  await controller.close(); //ใช้.close() ปิด Stream และสิ้นสุดการส่งข้อมูล
}