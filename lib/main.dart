import 'package:easylaze/splashscreen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
