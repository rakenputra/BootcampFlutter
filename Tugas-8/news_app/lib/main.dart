import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/login.dart';
import 'package:news_app/news.dart';
import 'package:news_app/home.dart';
import 'package:news_app/quiz2.dart';
import 'package:news_app/search.dart';
import 'package:news_app/settings.dart';
import 'package:news_app/signup.dart';
import 'GetStartedPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      initialRoute: '/getstarted',
      getPages: [
        GetPage(name: '/getstarted', page: () => const GetStartedPage()),
      ],
    );
  }
}
