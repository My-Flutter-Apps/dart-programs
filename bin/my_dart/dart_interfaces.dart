class Person
{
  int a = 10;
  void walk()
  {
     print("Person can Walk");
  }

  void eat()
  {
    print("Person can Eat");
  }

  void cook(){
    print("Person can Cook");
  }
}

class Female implements Person
{
  @override
  void cook() {
    print("Overriden Cook");
  }

  @override
  void eat() {
   print("Overriden Eat");
  }

  @override
  void walk() {
    print("Overriden Walk");
  }

  @override
  int a = 20;
  
}


void main(List<String> args) {
  Female f = Female();
  f.cook();
  f.eat();
  f.walk();
  print("Value of A is ${f.a}");
}