import 'package:flutter/material.dart';

import '../model/input_data.dart';

Widget createCard(RandomData obj) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    // ignore: dead_code
    height: obj.isFocus ? 110 : 100,
    // ignore: dead_code
    width: obj.isFocus ? 110 : 100,
    decoration: BoxDecoration(
        // ignore: dead_code
        color:
            obj.isFocus ? const Color.fromARGB(255, 76, 238, 61) : Colors.white,
        shape: BoxShape.rectangle,
        // ignore: dead_code
        border: obj.isFocus
            // ignore: dead_code
            ? Border.all(color: Colors.black, width: 3)
            : Border.all(color: Colors.black, width: 2)),
    padding: const EdgeInsets.all(10),
    child: Center(
      child: Text(
        obj.data.toString(),
        style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black),
      ),
    ),
  );
}
