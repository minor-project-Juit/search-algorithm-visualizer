// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class OutputText extends StatefulWidget {
  int index;
  OutputText(this.index, {Key? key}) : super(key: key);

  @override
  _OutputTextState createState() => _OutputTextState();
}

class _OutputTextState extends State<OutputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.index == -1
              ? const Text(
                  "The element is not Present in the Array.",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                )
              : const Text(
                  "The element is present at the index of: ",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
          widget.index == -1
              ? const SizedBox()
              : Text('${widget.index}',
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.green))
        ],
      ),
    );
  }
}
