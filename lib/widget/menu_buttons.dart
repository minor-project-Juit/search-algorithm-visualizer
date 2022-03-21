import 'package:flutter/material.dart';

Widget createMenuButton({
  required String text,
  required Function action,
}) {
  return Container(
    height: 50,
    width: 450,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 2)),
    child: Center(
      child: TextButton(
        onPressed: () {
          action();
        },
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 2.0,
              color: Color.fromARGB(255, 31, 29, 29)),
        ),
      ),
    ),
  );
}
