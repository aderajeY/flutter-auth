import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenTitle(),
    );
  }
  Widget _screenTitle(){
    return const Text(
      'GoMoon',
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800
        ),
    );
  }
  Widget _moonImageWidget(){
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/moon.png"),
            fit: BoxFit.contain,
            ),
        ),
      );
  }
}