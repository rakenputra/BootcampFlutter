range (num1, num2){
  if (num1 <= num2){
    return [for (int i = num1; i <= num2; i++) i];
  }else{
    return [for (int i= num1; i >= num2; i--) i];
  }
}

void main(){
print (range(10,1));
print (range(1,10));
}