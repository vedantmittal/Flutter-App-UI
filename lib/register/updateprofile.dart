import 'package:easylaze/drawer/profile.dart';
import 'package:flutter/material.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  String _result = 'Male';
  int _radioValue;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setState(() {
      _radioValue = 0;
    });
    super.initState();
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _result = 'Male';
          break;
        case 1:
          _result = 'Female';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Positioned(
                    top: 15,
                    left: 90.0,
                    right: 40.0,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.black87,
                        size: 15.0,
                      ),
                      radius: 15.0,
                      backgroundColor: Colors.pink[50],
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
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      letterSpacing: 0.3,
                                      color: Colors.black),
                                  hintText: 'Customer Name'),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                  hintText: 'Mail ID'),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Radio(
                                          value: 0,
                                          groupValue: _radioValue,
                                          onChanged: _handleRadioValueChange,
                                          activeColor: Colors.orange[800],
                                        ),
                                        new Text(
                                          'Male',
                                          // style: new TextStyle(fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Radio(
                                          value: 1,
                                          groupValue: _radioValue,
                                          onChanged: _handleRadioValueChange,
                                          activeColor: Colors.orange[800],
                                        ),
                                        new Text(
                                          'Female',
                                          // style: new TextStyle(fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.white,
                                elevation: 0.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        'Change Password',
                                        style: TextStyle(
                                          color: Colors.orange[800],
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.orange[800],
                                      size: 25.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                  hintText: 'Enter Password'),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                  hintText: 'Confirm Password'),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ButtonTheme(
                              height: 35.0,
                              minWidth: 150.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Profile()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0))),
                                color: Colors.orange[800],
                                child: Text(
                                  'Update',
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
