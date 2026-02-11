abstract class Vehicle
{
  int a = 20;
  String b = "Vysh";

  increaseAcclerator();

  pressBreak();

  pressClutch();

  void type(){
    print("I am a Vehicle");
  }
}

class Suziki extends Vehicle{
  int a = 30;
  @override
  String b = "Vyshnavi";

  @override
  increaseAcclerator() {
    print("Speed is increased");
  }

  @override
  pressBreak() {
    print("Break is pressed");
  }

  @override
  pressClutch() {
    print("Clutch is pressed");
  }

  @override
  void type() {
   print("I am overriden type");
  }
}


void main(List<String> args) {
  Suziki s = Suziki();
  s.increaseAcclerator();
  s.pressBreak();
  s.pressClutch();
  s.type();
  print("A is ${s.a}");
  print("B is ${s.b}");
}