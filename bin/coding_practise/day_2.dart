// List<int> removeDuplicates(List<int> data) {
//   int length = data.length;
//   Set<int> result = {};

//   for(int i=0;i<length;i++)
//   {
//      result.add(data[i]);
//   }
//   return result.toList();
  
// }

List<int> removeDuplicates(List<int> data) {
  if(data.isEmpty) return data;

  int index = 1;
  for(int i=1;i<data.length;i++){
    if(data[i] != data[i-1]){
      data[index] = data[i];
      index++;
    }
  }

  return data.sublist(0,index);
}

List<int> removeUnsortedDuplicates(List<int> data){
  int length = data.length;
  return data.toSet().toList();
}

List<int> addElement(List<int> data,int index,int element){
  int length = data.length;

  data.insert(index, element);

  return data;
}

List<int> arrayRanking(List<int> data) {
  int length = data.length;
  for(int i=0;i<length;i++)
  {
    data[i] = i;
  }

  return data;
}

void main(List<String> args) {
  List<int> data = [1,2,3,4,5,5,5,5,5,6,6,6,6,7,7];
  List<int> unsortedData = [1,3,1,4,2,1,5];
  List<int> duplicatesRemoved = removeDuplicates(data);
  List<int> unsortedDuplicatesRemoved = removeUnsortedDuplicates(data);
  List<int> afterAdding = addElement(data,2,30);
  List<int> arrayRankingValue = arrayRanking(data);
  

  print("@@@Duplicates Removed $duplicatesRemoved");
  print("UnsortedDuplicatesRemoved $unsortedDuplicatesRemoved");
  print("AfterAdding $afterAdding");
  print("ArrayRankingValuss $arrayRankingValue");
}