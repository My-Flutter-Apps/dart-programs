extension StringCase on String {
  String get convertUpperCase => toUpperCase();
}

void main(List<String> args) {
  String email = "Vysh";

  print("@@@UpperCase2 ${email.convertUpperCase}");
  print("@@@UpperCase1 ${StringCase("abcd").convertUpperCase}");
}