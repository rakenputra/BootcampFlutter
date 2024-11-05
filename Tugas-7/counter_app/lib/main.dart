import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super. key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}


class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove)),
              const SizedBox(width: 20),
              Text('Nilai Counter : $counter'),
              const SizedBox(width: 20),
              InkWell(
                onTap: (){
                  counter++;
                  setState(() {});
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

//Analisis Terhadap SetState

// Ketika kita membangun statefulwidget terdapat beberapa elemen yang perlu kita gunakan agar fungsi statefulwidget dapat digunakan.
// Elemen-elemen tersebut seperti CreateState,InitState dan salah satunya setState.
// Dengan kode diatas kita ingin membangun aplikasi counter yang dapat menambahkan  atau mengurangkan angka melalui input berupa button.
// Disinilah kita menggunakan statefulwidget karena kita membutuhkan widget yang dapat berubah untuk menampilkan dan mengupdate nilai counter selama aplikasi berjalan.
// Pertama  kita membuat state apa yang kita inginkan agar nilai dapat berubah ketika terdapat input, disini kita membuat createstate dengan class bernama _CounterPage.
// Di dalam class tersebut kita memberikan logic yang diperlukan.
// Di dalam fungi onTap pada setiap button terdapat 'setState' karena kita mengiginkan agar nilai dari counter tersebut diperbarui atau selama kita melakukan input dari button tersebut.
// Jika sintaks 'setState' dihilangkan nilai tidak dapat diperbarui dikarenakan kita tidak menentukan kapan aplikasi akan menerima state baru dari input yang diberikan button.