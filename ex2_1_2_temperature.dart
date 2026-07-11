class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value) {
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print("อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์ ไม่สามารถกำหนดได้");
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
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