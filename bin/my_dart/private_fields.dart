class Student {
  String name;
  int age;
  String address;
  int _marks = 90;

  Student(this.name, this.age, this.address);
}

class SData {
  
  getDetails() {
    Student s1 = Student("Vyshnavi", 25, "Hyderabad");
    print("Student details are ${s1._marks}");
  }
}
