class titan{
  late double _powerpoint;

  titan(this._powerpoint);

void set powerpoint(double value){
  if (value < 5){
    _powerpoint = 5;
  }else{
    _powerpoint = value;
  }
}

double get powerpoint  => _powerpoint;
}

