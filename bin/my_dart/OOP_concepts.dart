
// class Person {
//   String name;
//   int age;

//   static Person? p;

//   Person._namedConstructor(this.name,this.age);

//   // Person(this.name,this.age){
//   //   print("@@@Constructor called $name and $age");
//   // }

//   // Person.namedOne(this.name,this.age){
//   //   print("@@@NamedOne $name and $age");
//   // }

//   // Person.namedTwo(this.name,this.age){
//   //   print("@@@NamedTwo $name and $age");
//   // }

//   factory Person(String name,int age) {
//     if(p == null) {
//       p = Person._namedConstructor(name,age);
//       return p!;
//     }
//     return p!;
//   }
// }

// class Student extends Person{
//   Student(){

//   }
// }



class Person {
  String name;
  int age;

  Person(this.name,this.age);

  factory Person.create(String type,String name,int age){
    if(type == "student"){
      return Student(name,age);
    }else if(type == "employee"){
      return Employee(name,age);
    }
    return Student(name,age);
  }
}

class Student extends Person {
  Student(String name,int age) : super("Vyshnavi",25);
}

class Employee extends Person {
  Employee(String name,int age) : super("Arjun",27);
}


void main(List<String> args) {
  Person p = Person.create("student", "Ashwini", 28);
  print("@@@Name is ${p.name}");
  print("@@@Age is ${p.age}");
}