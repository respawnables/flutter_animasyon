import 'package:flutter/material.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}
