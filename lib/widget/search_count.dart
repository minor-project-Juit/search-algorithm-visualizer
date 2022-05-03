import 'package:flutter/material.dart';

Widget createSearchCount(int data) {
  return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Total Search Done: ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
          Text("$data",
              style:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ],
      ));
}
