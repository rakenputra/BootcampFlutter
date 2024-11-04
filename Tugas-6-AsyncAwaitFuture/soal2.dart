Future delayedPrint(int seconds, String message){
  final duration = Duration(seconds : seconds);
  return Future.delayed(duration). then((value) => message);
}

void main(){
  print('Life');
  delayedPrint(1, 'Never Flat'). then ((status){
    print(status);
  });
  print('Is');
}