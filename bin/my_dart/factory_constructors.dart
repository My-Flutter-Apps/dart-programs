//Lazy SingleTon
// class SingleTon {
//   static SingleTon? _singleTon;
//   SingleTon._createInstance();

//   // SingleTon() {

//   // }

//   factory SingleTon() {
//     _singleTon ??= SingleTon._createInstance();
//     return _singleTon!;
//   }
// }

class SingleTon {
  static final SingleTon _singleTon = SingleTon._createInstance();
  SingleTon._createInstance();

  // SingleTon() {

  // }

  factory SingleTon() {
    return _singleTon;
  }
}

void main() {
  SingleTon singleTon1 = SingleTon();
  SingleTon singleTon2 = SingleTon();

  if (identical(singleTon1, singleTon2)) {
    print("Those values are Equal");
  } else {
    print("Those values are not Equal");
  }
}
