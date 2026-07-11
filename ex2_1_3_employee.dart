class Employee { //สร้างclassแม่
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee { //สร้างclassลูก ในส่วนของ FullTimeEmployee
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override  //ใช้@override เพื่อเขียนเปลี่ยนพฤติกรรภายใน
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee { //สร้างclassลูก ในส่วนของ PartTimeEmployee
  double hourlyRate; //กำหนดตัวแปรสำหรับเงินรายชั่วโมง
  int hoursWorked; //กำหนดตัวแปรสำหรับจำนวนชั่วโมงในการทำงาน

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
      : super(name);

  @override //ใช้@override เพื่อเขียนเปลี่ยนพฤติกรรภายใน
  double calculateSalary() {
    return hourlyRate * hoursWorked; //คืนค่าและคำนวนเงินรายได้ 
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("Anto", 30000),
    PartTimeEmployee("Bob", 200, 80),
    FullTimeEmployee("Toy", 45000),
    PartTimeEmployee("Diva", 250, 60),
  ];

  for (var emp in employees) {
    print("${emp.name} : ${emp.calculateSalary()} บาท");
  }
}