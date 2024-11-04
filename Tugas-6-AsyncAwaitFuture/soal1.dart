class human{
  String name = 'Nama Character One Piece';

  Future<void> getName() async {
    await Future.delayed(Duration(seconds : 3));
    name = 'Rafi';
    print('get data [done]');
  }
}

void main () async {
  var h = human();
  print('Luffy');
  print('Zoro');
  print('Killer');
  print(h.name);
  await h.getName();
  print(h.name);
}