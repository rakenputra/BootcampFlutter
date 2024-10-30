void main(){
//soal nomor 1
teriak(){
  print('Halo sanbers!');
}

teriak();

/////////////////////////////////////////////////
//soal nomor 2

kalikan(num1, num2){
  return num1 * num2 ;
}
var num1 = 12;
var num2 = 4;
var hasilkali = kalikan(num1, num2);
print(hasilkali);

//////////////////////////////////////////////
//soal nomor 3

introduce (name, age, address, hobby){
  return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan punya hobby yaitu $hobby!';
}

var name = 'Agus';
var age = 30;
var address = 'Jln. Malioboro, Yogyakarta';
var hobby = 'gaming';

var perkenalan = introduce (name, age, address, hobby);
print(perkenalan);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//soal nomor 4


  int angka = 6;
  int hasil = faktorial(angka);

  print('Faktorial dari $angka adalah $hasil');
}


int faktorial(int n) {
  if (n <= 0) {
    return 1;
  }

  int faktor = 1;
  for (int i = n; i > 1; i--) {
    faktor *= i;
  }

  return faktor;
}