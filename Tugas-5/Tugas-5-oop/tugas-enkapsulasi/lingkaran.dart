class lingkaran{
  late double _ruas;

  lingkaran(this._ruas);

  void set ruas(double value){
    if (value > 0){
    _ruas = value;
    }
    else{
      _ruas = value * -1;
    }
  }

  double get ruas => _ruas;

  double hitungluas (){
    const double pi = 3.14;
    return  pi * _ruas * _ruas;
  }

}