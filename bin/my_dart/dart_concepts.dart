import 'abstraction.dart';
import 'inheritance.dart';
import 'polymorphism.dart';
import 'private_fields.dart';

void main(List<String> arguments) {
  print("Let's practise dart OOP concepts");

  //Inheritance
  Dog d = Dog();
  d.eat();
  print("Value of A is ${d.a}");
  print("Value of a is ${d.a}");
  d.getMyDetails();

  //Abstraction
  Car c = Car();
  print(
      "Car actions are ${c.pressAcclerator()} and ${c.pressBreak()} and ${c.pressClutch()}");
  print("Value of a is ${c.a}");
  c.type();

  //Polymorphism
  Shape s1 = Rectangle(2, 3);
  Shape s2 = Circle(20);

  Shape s3 = Shape();
  Circle s4 = Circle(20);

  print("Value of A is ${s1.a}");
  print("Rectangle area is ${s1.getArea()}");
  print("Circle area is ${s2.getArea()}");

  //Private fields
  SData sData = SData();
  sData.getDetails();

  // Student student = Student("Vysh", 25, "Hyderabad");
  // student._marks;
}
