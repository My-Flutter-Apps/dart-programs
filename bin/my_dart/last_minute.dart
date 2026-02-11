void main(List<String> args) {
  List<int> secondLarge = [1,2,3,4,5,6,7,8,9];

  print("Second Largest is ${secondLargest(secondLarge)}");


}

secondLargest(List<int> secondLarge) {
  int length = secondLarge.length;
  int first = secondLarge[0];
  int second = secondLarge[0];

  for(int i=1;i<length;i++)
  {
    if(secondLarge[i] > first){
      second = first;
      first = secondLarge[i];
    }else if(first == second || secondLarge[i] > second){
      second = secondLarge[i];
    }
  }

  return second;
}