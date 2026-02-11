// abstract class Vehicle {
//   pressClutch();

//   pressAcclerator();

//   pressBreak();

//   int a = 10;

//   void type() {
//     print("I am a Vehicle");
//   }
// }

mixin Vehicle {
  pressClutch();

  pressAcclerator();

  pressBreak();

  void getType() {
    print("I am a Vehicle");
  }
}

class Car with Vehicle {
  @override
  int a = 20;

  @override
  pressAcclerator() {
    print("Acclerator is pressed");
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
    print("I am a Car");
  }
}
