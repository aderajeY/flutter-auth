// ignore_for_file: must_be_immutable, sort_child_properties_last, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers

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
              _dropDownWidget(),
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
    List<String> _items = [
      'Mercury',
      'Venus',
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
      'Uranus',
      'Neptune'
    ];
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
      ),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        )
      ),
      child: DropdownButton(
        onChanged: (_) {},
        value: _items.first,
        items: _items
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
