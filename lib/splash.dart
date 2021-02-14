import 'dart:async';
import 'package:easylaze/location.dart';
import 'package:easylaze/open.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
  Navigator.push(context,MaterialPageRoute(builder: (context) => Location()),);
}

  @override
void initState() {
  super.initState();
  startTime();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/1st screen.jpg'),
          fit: BoxFit.cover)
          ),
          child: Center(child: Image.asset('images/Logo.png',width: 250.0,),)
        ),
      ),
    );
  }
}



