class Calculator<T extends num>
{
   T a;
   T b;

   Calculator(this.a,this.b);

   num add() {
     return a + b;
   }

   num sub(){
    return a - b;
   }

   num mul()
   {
    return a * b;
   }

   num div(){
    return a / b;
   }
}


void main(List<String> args) {
  Calculator<int> c1 = Calculator(10, 20);
  Calculator<double> c2 = Calculator(10.5, 20.7);
  

  print("Result is ${c1.add()}");
  print("Result is ${c1.sub()}");

  
}