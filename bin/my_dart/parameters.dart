class Person
{
  String name;
  int age;
  String? address;

  Person(this.name,this.age,{required this.address});

}


void main(List<String> args) {
  Person p = Person("Vysh",25,address: "Hyderabad");
  print("@@@Address ${p.name}");
  print("@@@Address ${p.age}");
  print("@@@Address ${p.address}");

}