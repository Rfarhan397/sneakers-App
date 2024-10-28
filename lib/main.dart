// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers/view/navigator.dart'; // Local import
import 'package:sizer/sizer.dart'; // External package import

void main() {
  runApp(const MyApp());
}

/// Main entry point of the Sneakers Shop App
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Quicksand',
        ),
        title: 'Sneakers Shop App',
        home: MainNavigator(),
      );
    });
  }
}
