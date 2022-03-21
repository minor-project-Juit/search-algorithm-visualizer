import 'package:flutter/material.dart';

createAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.grey[100],
    title: Text(
      title,
      style: const TextStyle(
          color: Colors.black,
          //fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          fontSize: 35),
    ),
    centerTitle: true,
    elevation: 0.0,
  );
}
