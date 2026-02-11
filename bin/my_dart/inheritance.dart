class Animal {
  String color;
  int legsCount;
  String origin;
  String type;
  int a = 10;

  Animal(this.color, this.legsCount, this.origin, this.type);

  void eat() {
    print("$type is eating");
  }
}

class Dog extends Animal {
  int a = 20;
  Dog() : super("Brown", 4, "India", "Dog");

  getMyDetails() {
    print(
        "I am a dog with color $color and I have $legsCount legs and I originated from $origin");
  }
}
