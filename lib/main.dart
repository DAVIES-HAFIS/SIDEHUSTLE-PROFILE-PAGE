import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidehustle_profile_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Side Hustle Data Page',
      home: SplashScreen(),
    );
  }
}

