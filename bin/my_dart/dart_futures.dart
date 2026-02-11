Future<String?> getData() async{
  return await Future.delayed(Duration(seconds: 1)).then((value) {
    return "Vysh";
  });
}

void main(List<String> args)  async {
  print("Start");
  String? name =  await getData();
  print("Name is $name");

  print("End");

  // getData().then((value) {
  //   print("My Name is $value");
  // });
}