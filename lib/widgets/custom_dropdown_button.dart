// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomDropDownClass extends StatelessWidget {
  List<String> values;
  double width;
  CustomDropDownClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      width: width,
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
        value: values.first,
        items: values
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
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