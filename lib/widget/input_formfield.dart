import 'package:flutter/material.dart';

Widget inputTextField({required Function setValue}) {
  return SizedBox(
    width: 250,
    child: TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      onSubmitted: (value) {
        setValue(int.parse(value));
      },
    ),
  );
}
