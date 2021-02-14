import 'package:easylaze/register/updateprofile.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu_chnge.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuAdd()));
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink[50],
                  child: Center(
                    child: Image.asset(
                      'images/Logo.png',
                      width: 150.0,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 50.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      top: -30,
                      left: 40.0,
                      right: 40.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 36.0,
                        child: CircleAvatar(
                          child: Image.asset(
                            'images/53.png',
                            width: 25.0,
                          ),
                          radius: 35.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('Vedant Mittal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.orange[800],
                                      fontSize: 17.0,
                                      letterSpacing: 0.3)),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('mittalvedant5@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                      fontSize: 15.0)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('9690677699',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                      fontSize: 15.0)),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              height: 25.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UpdateProfile()));
                                },
                                elevation: 0,
                                color: Colors.orange[800],
                                child: Text('Edit Profile',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            SizedBox(height: 40.0),
                            CircleAvatar(
                              child: Text('0',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              backgroundColor: Colors.black,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Easy for Lazy',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.2,
                                          fontSize: 14.0)),
                                  Text(' Orders',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.orange[800],
                                          fontSize: 17.0,
                                          letterSpacing: 0.3)),
                                ],
                              ),
                            ),
                            SizedBox(height: 40.0),
                            ButtonTheme(
                              height: 35.0,
                              minWidth: 150.0,
                              child: RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0))),
                                color: Colors.orange[800],
                                child: Text(
                                  'LOG OUT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
