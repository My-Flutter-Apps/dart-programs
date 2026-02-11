class Person 
{
  static int a = 0;
  int counter = 0;

  Person(){
    a++;
    counter++;
  }

  static int getA() {
    return a;
  }
}




void main(List<String> args) {
  Person p1 = Person();
  Person p2 = Person();
  
  print("GetA is ${Person.getA()}");
  print("Value of A is ${Person.a}");
  print("Value of counter is ${p1.counter}");
}