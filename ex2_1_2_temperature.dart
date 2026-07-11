//สร้างคลาส Temperature 
class Temperature {
  double _celsius;  //ฟิลด์ส่วนตัว คือ _celsius มี_อยู่ข้างหน้าหน้าคือ private

  Temperature(this._celsius);

  double get celsius => _celsius; //getter : อ่านอุณหภูมิ

//สร้าง setter ใช้สำหรับแก้ไขข้อมูล และกำหนดให้ปฏิเสธค่าที่ต่ำกว่า −273.15
  set celsius(double value) {
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print("อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์");
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32; //เพิ่ม Getter fahrenheit ที่คำนวณอุณหภูมิเป็นองศาฟาเรนไฮต์
}

void main() {
  Temperature temp = Temperature(25);

  print("Celsius: ${temp.celsius}");
  print("Fahrenheit: ${temp.fahrenheit}");

  temp.celsius = -300;

  temp.celsius = 100;

  print("Celsius: ${temp.celsius}");
  print("Fahrenheit: ${temp.fahrenheit}");
}