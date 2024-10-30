void main (){

// soal nomor 1
var i =0;

print('Looping pertama');
while ( i < 20){
  i += 2;
  print ('$i - I love coding');
}

print ('Looping Kedua');
while ( i >= 0) {
  print('$i - I will become a mobile developer');
  i -= 2;
}

/////////////////////////////////////////////////////////
//soal nomor 2



for(var i = 1; i<= 20; i++){
  if (i%3 == 0 && i % 2 !=0){
    print ('$i- I Love Coding');
  }else if (i % 2 == 0){
    print ('$i- Berkualitas');
  }else{
    print ('$i- Santai');
  }
}

////////////////////////////////////////////////////////
//soal nomor 3


var i = 0;
while (i <= 3){
  i++;
  print ('########');
}

////////////////////////////////////////////////////////
//soal nomor 4


for (var i =1; i <=7; i++){
  print('#' * i);
}

}