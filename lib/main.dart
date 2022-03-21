import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'routes/route.dart';

void main() {
  DesktopWindow.setFullScreen(true);
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorithm Visualizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
