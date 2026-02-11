class Calculate<T extends num> {
  T a;
  T b;

  Calculate({required this.a, required this.b});

  num doAdd() {
    return a + b;
  }

  num doSub() {
    return a - b;
  }

  num doMul() {
    return a * b;
  }

  num doDiv() {
    return a / b;
  }
}

void main(List<String> args) {
  Calculate c = Calculate(a: 10, b: 20);
  print(c.doAdd());
}
