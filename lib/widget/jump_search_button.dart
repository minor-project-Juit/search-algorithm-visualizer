import 'package:flutter/material.dart';

import '../algorithms/jump_search_algo.dart';
import '../model/input_data.dart';

Widget createJumpSearchButton(Function action, List<RandomData> dataModel,
    int data, Function setIndex, Function isSearching) {
  return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 2)),
      child: Expanded(
        child: Center(
          child: TextButton(
              onPressed: () {
                jumpSearch(dataModel, action, data, setIndex, isSearching);
              },
              child: const Text(
                "Search",
                style: TextStyle(
                    fontSize: 23, letterSpacing: 1.5, color: Colors.black),
              )),
        ),
      ));
}
