void main(){
  datahandling(input);
}

var input =[
  ['0001', 'Roman Alamsyah','Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Wiona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

datahandling(data){
data.forEach((item){
  print('Nomor ID : ${item[0]}');
  print('nama Lengkap : ${item[1]}');
  print('TTL : ${item[2]}, ${item[3]}');
  print('Hobby : ${item[4]}');
  print('');
});
}
