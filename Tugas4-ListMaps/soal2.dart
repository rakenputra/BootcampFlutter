rangewithstep (int num1, int num2, int step){
  if (num1 > num2){
    return [for (int i = num1; i >= num2; i-=step) i ];
  }else{
    return [for (int i = num1; i >= num2; i+=step) i ];
  }
}

void main (){
  print(rangewithstep(30, 23, 3));
}