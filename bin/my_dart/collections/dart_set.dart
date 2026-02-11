import 'dart:math';

void main(List<String> args) {
  var set = {5,2,3};

  set.add(4);
  set.add(3);
  // set.fold(10, (previousValue, element) {
  //   return previousValue * element;
  // },);

  // Iterable<int> count(int n) sync*{
  //   for(int i=1;i<=n;i++){
  //     yield i;
  //   }
  // }

  print("@@@MySetData $set");


  int totalSum = set.fold(0, (previousValue, element) => previousValue + element);

  var set1 = {1,2,3};
  var set2 = {4,5,6};

  print("@@@Two Elements are ${set1.followedBy(set2)}");

  print("@@@TotalSum $totalSum");

  set1.forEach((element) {
      print("@@@Set forEach $element");
  });

  set.join(',');

  print("@@@Joined elements $set");

  print("@@@Set Look Up ${set.lookup(2)}");

  int index = 0;

  var iterable = <int>{};

  

  set.map((e) {
      print("cameinside");
      return iterable.addAll([e]);
  }).toList();

  // var a = <int>{};

  int reduced = 
  set.reduce((value, element) {
    return value + element;
  });

  print("MYSet $set");

  int single = 
  set.singleWhere((element) {
    return element % 10 == 0;
  },orElse: () {
    return 0;
  },);

  var ab = set.where((element) {
    return element % 2 == 0;
  });

  print("@@@WhereClause $ab");

  print("@@@Take ${set.take(2)}");

  print("@@@SingleWhere $single");

  print("@@@ReducedValue is $reduced");
  
  print("@@@Mapp $iterable");

  //print("@@@Expand Elements are ${set.expand(count)}");

  for(var values in set){
    print("@@@Set Values are $values");
  }

  var a1 = <int>{2};

  // String reducedValue = a1.reduce((value, element) {
  //   return "Hello"; 
  // });

  a1.fold("Hello", (previousValue, element) {
    return "Helllo";
  });

  // print("@@@ReducedValue $reducedValue");
}