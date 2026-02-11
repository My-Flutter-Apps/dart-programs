mixin AirCraft
{
  moveLeft();

  moveRight();

  takeTurn();

  void type(){
    print("I am plane");
  }
}

mixin Vehicle
{
  pressBreak();

  pressAcclerator();

  pressClutch();

  void type() {
    print("I am Vehicle");
  }
}

class Suziki with Vehicle, AirCraft
{
  static int a = 10;

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
    print("Clucth is pressed");
  }
  
  @override
  moveLeft() {
    print("Moving Left");
  }
  
  @override
  moveRight() {
    print("Move Right");
  }
  
  @override
  takeTurn() {
    print("Take Turn");
  }
  
}


void main(List<String> args) {
  
}