class IndexOutOfRangeException implements Exception {
  String error;
  IndexOutOfRangeException(this.error);
}

String getCharAt(String s, int index) {
  if (index < 0 || index > s.length) {
    throw IndexOutOfRangeException("Index out of range");
  }
  return s[index];
}

void main(List<String> args) {
  String message = "Hello";

  try {
    String s = getCharAt(message, 10);
    print("S is $s");
  } on IndexOutOfRangeException {
    print("IndexOutOfRangeException called");
    rethrow;
  } catch (e) {
    print("Exception caught");
  }

  //print("The character at the position 5 is ${message[10]}");

  // try {
  //   print("The character at the position 5 is ${message[10]}");
  // } on RangeError {
  //   print("RangeError caught");
  // } catch (e) {
  //   print("Exception caught ${e.toString()}");
  // } finally {
  //   print("Finally Block");
  // }
}
