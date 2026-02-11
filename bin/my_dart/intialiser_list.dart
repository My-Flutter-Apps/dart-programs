class IntialiserList {
  int a;
  int b;

  IntialiserList(int x,int y)
      : a = x,
        b = y {
    print("Value of A is $a");
    print("Value of B is $b");
  }
}

void main(List<String> args) {
  IntialiserList intialiserList = IntialiserList(20,30);
  
}
