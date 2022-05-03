// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/menu_buttons.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isHover = false;
  void setHover() {
    setState(() {
      isHover = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Searching Algorithm Visualizer",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              letterSpacing: 2.0,
              color: Color.fromARGB(255, 31, 29, 29)),
        ),
        SizedBox(
          height: 25,
          child: Divider(
              thickness: 3,
              indent: 450,
              endIndent: 450,
              color: Color.fromARGB(255, 31, 29, 29)),
        ),
        SizedBox(
          height: 25,
        ),
        createMenuButton(
          text: "Linear Search",
          action: () {
            Navigator.of(context).pushNamed('/linearSearch');
          },
        ),
        SizedBox(
          height: 25,
        ),
        createMenuButton(
          text: "Binary Search",
          action: () {
            Navigator.of(context).pushNamed('/binarySearch');
          },
        ),
        SizedBox(
          height: 25,
        ),
        createMenuButton(
          text: "Jump Search",
          action: () {
            Navigator.of(context).pushNamed('/jumpSearch');
          },
        ),
        SizedBox(
          height: 25,
        ),
        createMenuButton(
          text: "Interpolation Search",
          action: () {
            Navigator.of(context).pushNamed('/interpolationSearch');
          },
        ),
        SizedBox(
          height: 25,
        ),
        createMenuButton(
          text: "Exponential Search",
          action: () {
            Navigator.of(context).pushNamed('/exponentialSearch');
          },
        ),
      ]),
    );
  }
}
