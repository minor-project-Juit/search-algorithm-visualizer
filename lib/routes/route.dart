import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/screen/binary_search_screen.dart';
import '../screen/menu_screen.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => const MenuScreen(),
  '/binarySearch': (context) => const BinarySearchScreen()
};