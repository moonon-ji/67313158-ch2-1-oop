class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
      : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("Alice", 30000),
    PartTimeEmployee("Bob", 200, 80),
    FullTimeEmployee("Charlie", 45000),
    PartTimeEmployee("David", 250, 60),
  ];

  for (var emp in employees) {
    print("${emp.name} : ${emp.calculateSalary()} บาท");
  }
}