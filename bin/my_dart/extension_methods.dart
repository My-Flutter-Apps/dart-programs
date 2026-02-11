extension ConvertUpperCase on String {
  static String a = "Hello";
  String get convertUpperCase {
    return toUpperCase();
  }
}

extension ConvertLowerCase on String {
  static String b = "Vyshu";
  String get convertLowerCase {
    return toLowerCase();
  }
}

class Extensions {
  String name;

  Extensions({required this.name});

  convertUppercase() {
    print(name.convertUpperCase);
    print(name.convertLowerCase);
  }
}

void main() {
  Extensions e = Extensions(name: "vaishNavi");
  e.convertUppercase();

  print("Value of B is ${ConvertLowerCase.b}");
}
