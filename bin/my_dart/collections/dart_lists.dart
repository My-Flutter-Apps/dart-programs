void main(List<String> args) {
  List<dynamic> fruits = ["Apple","Banana","CApple","WaterMelon"];
  print("@@@Fruits $fruits");

  dynamic a = 10;
  a = "Vaishnavi";

  print("@@@Value of A is $a");

  var show = [];
  List<dynamic> kranthi = [];

  kranthi.add("C_Apple");
  kranthi.add(10);

  print("@@@Kranthi Values are $kranthi");

  show.add("10");
  show.add("Vaishu");

  print("@@@Show Values are $show");

  var scores = [1,2,3,4];
  scores[2] = 10;

  print("@@@ScoresList $scores");

  List<int> values = [];
  values.add(1);
  values.addAll([1,2,3,4,5]);
  values.remove(1);

  print("@@@Values are $values");

  final immutable = [1,2,3,4,5,6];
  immutable.add(10);
  immutable.addAll([11,12,13]);

  print("@@@Immtable $immutable");

  const a1 = [1,3,5,7,9];
  // a1 = [10,11,13];
  // a1.add(12);
  // a1.add(13);

  print("A1 Values are $a1");

  var a2 = [1,2,3,4,5];
  for(var i=0;i<a2.length;i++){
    print(a2[i]);
  }

  for(var item in a2){
    print("@@@Item are $item");
  }

  a2.forEach((element) {
    print("@@@Element are $element"); 
  });

  a2.forEach(print);

  var lower = [1,2,3];
  var upper = [4,5];

  var lower_upper = [...lower,...upper];
  print("@@@LowerUpper $lower_upper");

  List<String> fixedLength = List<String>.filled(5,"vysh");
  fixedLength.setAll(0, ["Ashuu"]);
  //fixedLength.length = 0;
  print("@@@FixedLength $fixedLength");

  List<int> myList = List.filled(5, 10,growable: true);
  print("@@@MyList $myList");

  final unique = List.generate(10, (index) {
    return 2 * index;
  },);

  print("@@@Unique Items $unique");


  final emptyList = List.empty(growable: true);
  emptyList.addAll([10,20,30]);
  print("@@@EmptyList $emptyList");

  final numbers = [1,2,3];
  final listFrom = List.from(numbers);

  print("@@@ListFrom $listFrom");

  var doubles = [1,2,3];

  final type = List<int>.from(doubles);
  print("@@@Type $type");

  List<num> a3 = [1,2,3];
  final a4 = List<int>.from(a3);

  print("@@@Final A4 $a4");

  final unModify = [1,2,3];
  final dontModify = List.unmodifiable(unModify);
  // dontModify.add(20);

  print("@@@DOnt Modify $dontModify");

  List<num> prasad = [1,2,3];
  final hello = List<int>.from(prasad);

  List<num> boo = [1,2,3.5];
  final ash = List.castFrom<num,int>(boo);

  print("@@@FirstElement ${ash[0]}");

  // print("@@@Ash $ash");

  final list1 = List.filled(6, [10,20,30],growable: true);
  print("@@@List1 $list1");

  list1[0].add(99);

  print("@@@FInallyUpdated $list1");
  
  final boo1 = List.filled(6, 0);
  print("@@@Boo1 $boo1");
  final boo2 = [10,20,30];

  List.writeIterable(boo1, 3, boo2);
  print("@@@@Finally $boo1");


  final mayBeNumbers = <int?>[1,2,3];
  mayBeNumbers.length = 5;

  print("@@@MayBeNumbers $mayBeNumbers");
  
  final nums = <int>[1,2,3];
  nums.length = 2;

  print("@@@NewNumbers $nums");

  final reverse = ["two","three","four"];
  print("@@@ListReverse ${reverse.reversed}");

  final sorting = ["two","one","three","four"];
  sorting.sort((a, b) {
    return a.length.compareTo(b.length);
  },);

  print("@@@Sorting $sorting");

  final shuffle = <int>[1,2,3];
  shuffle.shuffle();
  print("@@@Shuffle $shuffle");

  final newList = <int>[20,30,40];

  int result = newList.lastIndexWhere((element) {
    return element.isEven;
  });

  print("@@@ResultIs $result");

  final lastIndexList = [10,40,30,40];

  int index = lastIndexList.lastIndexOf(40);
  print("@@@LastIndex $index");

  final clearList = List.filled(3, 0,growable: true);
  clearList.clear();

  print("@@@ClearingList $clearList");

  List A = [10,20,30];
  List B = [40,50,60];

  print("@@@FInalList ${A + B}");

  List bigList = [10,20,30,40,50,60];
  List subList = bigList.sublist(3);
  bigList[4] = 99;

  print("@@@BigList $bigList and $subList");

  List range1 = [10,20,30,40,50];
  var range2 = range1.getRange(2, 5);

  range1[3] = 100;
  print("@@@BigList $range1 and $range2");

  List l1 = [1,2,3,4,5];
  List l2 = [6,7,8,9,10];

  l2.setRange(2, 4, l1);

  print("@@@Values are $l2");

  final math = [1,2,3,4,5];
  math.removeRange(2, 2);

  print("@@@MathIs $math");

  List e1 = [1,2,3];
  List e2 = e1;

  if(e1 == e2){
    print("@@@Yes Equal");
  }else{
    print("@@@Not Equal");
  }



}