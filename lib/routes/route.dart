import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/screen/binary_search_screen.dart';
import '../screen/exponential_search_screen.dart';
import '../screen/interpolation_search_screen.dart';
import '../screen/linear_search_screen.dart';
import '../screen/jump_search_screen.dart';
import '../screen/menu_screen.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => const MenuScreen(),
  '/binarySearch': (context) => const BinarySearchScreen(),
  '/linearSearch': (context) => const LinearSearchScreen(),
  '/jumpSearch': (context) => const JumpSearchScreen(),
  '/interpolationSearch': (context) => const InterpolationSearchScreen(),
  '/exponentialSearch': (context) => const ExpontentialSearchSCreen(),
};
