import 'dart:isolate';

void heavyTask([SendPort? sendPort]) {
  int sum = 0;
  for(int i=0;i<100;i++) {
    Future.delayed(Duration(seconds: 1),() {
      sum += i;
      //sendPort.send(sum);
    });
  }
}

// int heavyTask(){
//   int sum = 0;
//   for(int i=0;i<100;i++){
//     sum += i;
//   }
//   print("Sum is $sum");
//   return sum;
// }


void main(List<String> args) async {
  final receivePort = ReceivePort();

  await Isolate.spawn(heavyTask,receivePort.sendPort);
  //await Isolate.run(heavyTask);
  

  receivePort.listen((message) {
    print("Result from Isolate: $message");
  });

}