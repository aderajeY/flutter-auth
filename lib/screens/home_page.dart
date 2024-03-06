// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          height: _deviceHeight,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.15),
          width: _deviceWidth,
          child: _screenTitle(),
        ),
      ),
    );
  }
  Widget _screenTitle(){
    return const Text(
      'GoMoon',
      style: TextStyle(
        color: Colors.green,
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