
List<int> sortArray(List<int> array) {
  int length = array.length;

  for(int i=0 ; i<length ; i++) {
    for(int j=0 ; j < length - i - 1 ; j++)
    {
      if(array[j] > array[j+1]) {
        int temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }

  return array;
}

List<int> findDuplicates(List<int> array) {
  int length = array.length;
  //Naive approach
  // List<int> dup = [];

  // for(int i=0;i<length;i++)
  // {
  //     for(int j=i+1;j<length;j++)
  //     {
  //       if(array[i] == array[j]){
  //         dup.add(array[i]);
  //         break;
  //       }
  //     }
  // }

  // Set<int> tempSet = {};
  // List<int> duplicates = [];

  // for(int i=0;i<length;i++)
  // {
  //   if(!tempSet.add(array[i])){
  //     duplicates.add(array[i]);
  //   }
  // }

  Map<int,int> frequency = {};
  List<int> duplicates = [];

  for(int i=0;i<length;i++)
  {
    
    frequency[array[i]] = (frequency[array[i]] ?? 0 ) + 1;
    if(frequency[array[i]]! > 1){
      duplicates.add(array[i]);
    }
  }

  //print("FrequencyArray $frequency");

  return duplicates;
}

int findLargest(List<int> array) {
  int length = array.length;
  int first = array[0];
  int largest = first;

  for(int i=1;i<length;i++)
  {
    if(array[i] < first) {
      largest = array[i];
      first = largest;
    }
  }

  return largest;
}

int secondSmallest(List<int> array)
{
  int length = array.length;
  int fSmall = array[0];
  int sSmall = array[0];

  for(int i=1;i<length;i++)
  {
    if(array[i] < fSmall){
      sSmall = fSmall;
      fSmall = array[i];
    }
  }

  return sSmall;
}

void splitSpace(String a){
  List<String> splitted = a.split(" ");
  
}

void main(List<String> args) {
  List<int> array = [3,4,5,1,2,10,11];
  List<int> array1 = [2,3,1,4,5,2,1,3,5];
  List<int> array2 = [20,30,10,20,10,0,80];
  //array.sort();

  List<int> sortedArray = sortArray(array);
  List<int> duplicatesArray = findDuplicates(array1);
  int large = findLargest(array2);
  int secondSmall = secondSmallest(array2);

  duplicatesArray.sort();

  // print("Sorted Array $sortedArray");
  // print("Duplicates List $duplicatesArray");
  //print("Large values is $large");

  splitSpace("Of all the gin joints in all the towns in all the world,   ");
  print("SecondSmallestElement $secondSmall");

  
}