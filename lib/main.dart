
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Color.fromRGBO(31,31,31, 1.0),
        useMaterial3: true,
      ),
      home: HomePage()
      
    );
  }
}

