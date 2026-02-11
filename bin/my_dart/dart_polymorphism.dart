class Animal
{
  int a = 10;
  void walk(){
    print("Animal can walk");
  }

  void getType(){
    print("I am an Animal");
  }
}

class Dog extends Animal {
  int a = 20;
  int b = 50;

  @override
  void walk() {
    print("Dog can walk");
  }

  // void bark(){
  //   print("Dog can bark");
  // }
}

class Camel extends Animal
{
  int a = 30;
  @override
  void walk() {
    print("Camel can walk");
  }
}

void main(List<String> args) {
  Animal a = Dog();
  Animal b = Camel();

  a.walk();
  b.walk(); 
  a.getType();
  // a.bark();

  print("Value of A is ${a.a}");
  print("Value of B is ${b.a}");
}