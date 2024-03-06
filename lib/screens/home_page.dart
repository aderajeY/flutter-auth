// ignore_for_file: must_be_immutable, sort_child_properties_last, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers

import 'package:auth/widgets/custom_dropdown_button.dart';
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
          height: _deviceHeight,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.15,
          ),
          width: _deviceWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _screenTitle(),
              _containBoth()
            ],
          ),
        ),
      ),
    );
  }

  Widget _screenTitle() {
    return const Text(
      'GoMoon',
      style: TextStyle(
        color: Colors.green,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _moonImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/moon.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _dropDownWidget() {
    return CustomDropDownClass(values: const [
      'Mercury',
      'Venus',
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
      'Uranus',
      'Neptune'
    ], width: _deviceWidth);
  }

  Widget _sunMoon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownClass(
          values: const ['sun', 'moon'],
          width: _deviceWidth * 0.35,
        ),
        CustomDropDownClass(
          values: const ['sun', 'moon'],
          width: _deviceWidth * 0.35,
        ),
      ],
    );
  }
  Widget _containBoth(){
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropDownWidget(),
          _sunMoon(),
          _button()
        ],
      ),

    );
  }
  Widget _button(){

    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(bottom: _deviceHeight*0.006),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: MaterialButton(
        onPressed: (){},
        child: const Text(
          "Button",
          style: TextStyle(
            color: Colors.black
            ),
            ),
            ),
    );
  }
}
