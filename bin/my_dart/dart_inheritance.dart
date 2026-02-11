class Animal
{
  String name;
  String color;
  int age;

  Animal(this.name,this.color,this.age);

  void walk(){
    print("$name can walk");
  }
}

class Dog extends Animal
{
  String ownerName;
  Dog(String name,String color,int age,this.ownerName) : super(name,color,age);
}


void main(List<String> args) {
  Dog d = Dog("Zimmy","Brown",14,"James");
  print("Owner is ${d.ownerName}");
  d.walk();
}