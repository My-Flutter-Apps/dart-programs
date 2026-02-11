bool validParenthesis(String s) {
  int length = s.length;
  List<String> palindrome = [];

  for (int i = 0; i < length; i++) {
    if (s[i] == '(' || s[i] == '[' || s[i] == '{') {
      palindrome.add(s[i]);
    } else {
      int stackLength = palindrome.length;
      String top = palindrome[stackLength - 1];
      print("@@@Top $top");

      if (s[i] == ')' && top != '(') {
        return false;
      } else if (s[i] == ']' && top != '[') {
        return false;
      } else if (s[i] == '}' && top != '{') {
        return false;
      }

      palindrome.removeAt(stackLength - 1);
      print("@@@AfterRemoval $palindrome");
    }
  }

    print("Stack $palindrome");
    if(palindrome.isEmpty){
        return true;
    }

    return false;

  
}

void main(List<String> args) {
  String a = "()";
  bool result = validParenthesis(a);
  print("$result a palindrome");
}
