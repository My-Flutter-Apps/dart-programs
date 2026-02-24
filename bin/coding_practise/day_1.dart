int findSmallest(List<int> data) {
  int length = data.length;

  if(length == 0){
    throw "List cannot be empty";
  }

  if(length == 1){
    return data[0];
  }

  //int small = data[0];
  // for(int i=1;i<length;i++)
  // {
  //   if(data[i] < small){
  //     small = data[i];
  //   }
  // }

  // for(var item in data){
  //   if(item < small){
  //     small = item;
  //   }
  // }

  return  data.reduce((a, b) => a < b ? a : b);

}

// int findSecondSmallest(List<int> data) {
//   int length = data.length;
//   int first = data[0];
//   int second = data[0];

//   for(int i=1;i<length;i++)
//   {
//     if(data[i] < first) {
//       second = first;
//       first = data[i];
//     }else if((first == second && data[i] > second) || data[i] < second) {
//       second = data[i];
//     }
//   }

//   return second;
// }

int findSecondSmallest(List<int> data){
  if(data.length < 2){
    throw Exception("List must contain at least two elements");
  }

  int first = data[0] < data[1] ? data[0] : data[1];
  int second = data[0] < data[1] ? data[1] : data[0];

  for(int i=2;i<data.length;i++)
  {
    if(data[i] < first){
      second = first;
      first = data[i];
    }else if(data[i] > first && data[i] < second){
      second = data[i];
    }
  }

  return second;
}

int findSecondLargest(List<int> data) {
  if(data.length < 2){
    throw Exception("List must contain atleast 2 elements");
  }

  int first = data[0] > data[1] ? data[0] : data[1];
  int second = data[0] > data[1] ? data[1] : data[0];

  for(int i=2;i<data.length;i++)
  {
    if(data[i] > first) {
      second = first;
      first = data[i];
    }else if(data[i] < first && data[i] > second) {
      second = data[i];
    }
  }

  return second;
}

List<int> arrayReverse(List<int> data){
  int length = data.length;
  List<int> reverse = [];

  for(int i=length-1;i>=0;i--){
    reverse.add(data[i]);
  }

  return reverse;
}

// List<int> arrayReverse(List<int> data) {
//   int length = data.length;

//   for(int i=length-1;i>=0;i--)
//   {
//     int element = data[i];
    
//   }

// }

Map<int,int> countFrequency(List<int> data) {
  int length = data.length;
  Map<int,int> frequencyArray = {};

  for(int i=0;i<length;i++) {
    int element = data[i];
    frequencyArray[element] = (frequencyArray[element] ?? 0) + 1;
  }

  return frequencyArray;
}

List<int> rearrangeArray(List<int> data) {
  int length = data.length;
  for(int i=0;i<length;i++)
  {
    for(int j=0;j<length - i -1;j++)
    {
      if(data[j] > data[j+1]){
        int temp = data[j];
        data[j] = data[j+1];
        data[j+1] = temp;
      }
    }
  }

  return data;
}

int calculateSum(List<int> data){
  int length = data.length;
  int sum = 0;
  for(int i=0;i<length;i++)
  {
    sum += data[i];
  }

  return sum;
}

dynamic findMedian(List<int> data) {
  int length = data.length;
  //Even
  if(length - 1 % 2 == 0) {
    int mid = length ~/ 2;
    print("@@@Mid is $mid");
    double median = (data[mid-1] + data[mid]) / 2;
    return median;
  }else {
    int mid = length ~/ 2;
    return data[mid];
  }
}

void main(List<String> args) {
  List<int> data = [5,4,3,2,1,6];
  int smallest = findSmallest(data);
  int secondSmallest = findSecondSmallest(data);
  int secondLargest = findSecondLargest(data);
  List<int> reverse = arrayReverse(data);
  Map<int,int> frequencyCount = countFrequency(data);
  List<int> sorting = rearrangeArray(data);
  int sum = calculateSum(data);
  int median = findMedian(data);


  print("The smallest element in the given list is $smallest");
  print("The second smallest element is $secondSmallest");
  print("The second largest element is $secondLargest");
  print("The Reverse of the given array is $reverse");
  print("The frequency Array is $frequencyCount");
  print("Sorting Array $sorting");
  print("Sum of elements of Array is $sum");
  print("The median of the array is $median");
}