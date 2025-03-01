import 'package:cv_app/bottomnavigationbar_page.dart';

import 'package:cv_app/home_page.dart';
import 'package:cv_app/home_page1.dart';

import 'package:cv_app/sharedpreferences_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const BottomnavigationbarPage(),
    );
  }
}
