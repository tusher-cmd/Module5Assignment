class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void displayInfo() {
    print("Manager");
    super.displayInfo();
    print("Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
    : super(name, salary);

  @override
  void displayInfo() {
    print("Developer");
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
  }
}

void main() {
  Manager manager = Manager("Alice", 80000, "HR");

  Developer developer = Developer("Bob", 70000, "Dart/Flutter");

  manager.displayInfo();
  developer.displayInfo();
}
