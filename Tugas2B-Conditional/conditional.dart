import 'dart:io';
void main(){
//soal nomor 1
  print('Apakah anda ingin menginstall aplikasi (Y/T) :');
  String? input = stdin.readLineSync();

  input == 'Y' ? print("Aplikasi akan di install.") : print('instalasi dibatalkan');

  ////////////////////////////////////////////////////////////////////////////////////////
  //soal nomor 2

print('Nama : ');
String? nama = stdin.readLineSync();
print('Peran : ');
String? peran = stdin.readLineSync();

if (nama ==null || nama.isEmpty ){
  print('Nama harus diisi');
}else if (peran == null || peran.isEmpty){
  print('pilih peranmu untuk memulai game');
}else{
  print('selamat datang di Dunia Werewolf $nama, ');
  if(peran.toLowerCase() == 'penyihir'){
    print('Halo penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  }else if (peran.toLowerCase() == 'guard'){
    print('halo Guard $nama, kamu akan membantu melindungi temanmu dari werewolf');
  }else if(peran.toLowerCase() == 'werewolf'){
    print('halo werewolf $nama, kamu akan memakan mangsa setiap malam');
  }
}

//////////////////////////////////////////////////////////////
//soal nomor 3

print('hari : ');
String? hari = stdin.readLineSync();

switch (hari?.toLowerCase()){
  case 'senin' : {print ('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');}
  case 'selasa' : {print ('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');}
  case 'rabu' : {print ('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');}
  case 'kamis' : {print ('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');}
  case 'jumat' : {print ('Hidup tak selamanya tentang pacar.');}
  case 'sabtu' : {print ('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');}
  case 'minggu' : {print ('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');}
}

/////////////////////////////////////////////////////////////////////////////////
//soal nomor 4

var tanggal = 20;
var bulan = 5 ;
var tahun = 2080;

String namabulan;

switch(bulan){
  case 1 : namabulan = 'Januari';
  case 2 : namabulan = 'Febuari';
  case 3 : namabulan = 'Maret';
  case 4 : namabulan = 'April';
  case 5 : namabulan = 'Mei';
  case 6 : namabulan = 'Juni';
  case 7 : namabulan = 'Juli';
  case 8 : namabulan = 'Agustus';
  case 9 : namabulan = 'September';
  case 10 : namabulan = 'Oktober';
  case 11 : namabulan = 'November';
  case 12 : namabulan = 'Desember';
  default : namabulan = 'Bulan tidak ada';
}
print('$tanggal $namabulan $tahun');
}

