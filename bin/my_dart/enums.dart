enum Status { pending, completed, rejected }

void main(List<String> args) {
  print("@@@Values are ${Status.pending.index}");
  print("@@@Values are ${Status.completed.index}");
  print("@@@Values are ${Status.rejected.index}");

  for (var data in Status.values) {
    print("@@@Data is ${data.name}");
  }

  var status = Status.completed;
  switch (status) {
    case Status.completed:
      print("@@@The request is completed");
      break;
    case Status.pending:
      print("@@@The request is pending");
      break;
    case Status.rejected:
      print("@@@The request is rejected");
      break;
  }
}
