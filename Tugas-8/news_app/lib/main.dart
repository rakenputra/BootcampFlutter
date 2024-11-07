import 'package:flutter/material.dart';
import 'package:news_app/news.dart';
import 'package:news_app/home.dart';
import 'GetStartedPage.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: const Newspage(),
    );
  }
}
