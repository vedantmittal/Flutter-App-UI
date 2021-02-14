import 'package:flutter/material.dart';

import 'package:easylaze/home/homepage.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1st screen.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/Logo.png',
                width: 220.0,
              ),
            ),
            SizedBox(height: 50.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 220.0,
                child: ButtonTheme(
                  height: 35.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    color: Colors.orange[800],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.gps_fixed,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Use My Current Location',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 0.3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'OR',
              style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 35.0,
                width: 240.0,
                child: OutlineButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.orange[800],
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Search for your delivery location',
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontSize: 11.0,
                        ),
                      )
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
