class Bank
{
  String bankName;
  String location;
  double _balence = 0;

  Bank(this.bankName,this.location);

  // set setBalence(double balence)
  // {
  //   _balence += balence;
  // }

  double get getBalence => _balence;
}



