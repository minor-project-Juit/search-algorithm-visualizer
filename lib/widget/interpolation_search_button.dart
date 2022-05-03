import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/algorithms/interpolation_search_algo.dart';
import '../model/input_data.dart';

Widget createInterpolationSearchButton(
    Function action,
    List<RandomData> dataModel,
    int data,
    Function setIndex,
    Function isSearching,
    Function setCount) {
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
                setCount();
                interpolationSearch(
                    dataModel, action, data, setIndex, isSearching);
              },
              child: const Text(
                "Search",
                style: TextStyle(
                    fontSize: 23, letterSpacing: 1.5, color: Colors.black),
              )),
        ),
      ));
}
