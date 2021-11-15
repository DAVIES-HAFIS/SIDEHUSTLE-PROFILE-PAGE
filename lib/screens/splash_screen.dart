

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sidehustle_profile_app/helper_functions/colors.dart';
import 'package:sidehustle_profile_app/helper_functions/utils.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 10), ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: getScreenWidth(context) * 1,
              height: getScreenHeight(context) * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/friends.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: getScreenWidth(context) * 1,
              height: getScreenHeight(context) * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Color.fromRGBO(242, 144, 47, 0.05),
                    Color.fromRGBO(58, 149, 60, 0.4),
                    Color.fromRGBO(0, 0, 0, 0.7)
                  ],
                ),
              ),
            ),
            Container(
              width: getScreenWidth(context) * 1,
              height: getScreenHeight(context) * 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome TO Side-Hustle...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.lightGreen,fontSize: 24,),
                    ),
                    addVerticalSpacing(10),
                    Text('We Would Help You All The Way',textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.lightDeepGreen,fontSize: 12),),
                    addVerticalSpacing(120),
                    produceImage("assets/images/sidehustlelogo.png", 200, 50),
                    addVerticalSpacing(5),
                    Text('sidehustle(Team-2),2021 Copyright',textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.White, fontWeight: FontWeight.w300,fontSize: 12),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
