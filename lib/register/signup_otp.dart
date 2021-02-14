import 'package:easylaze/register/registered.dart';
import 'package:flutter/material.dart';

class SignUpModeOTP extends StatefulWidget {
  @override
  _SignUpModeOTPState createState() => _SignUpModeOTPState();
}

class _SignUpModeOTPState extends State<SignUpModeOTP> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'images/Logo.png',
                      width: 180.0,
                    ),
                  ),
                  SizedBox(height: 100.0),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 30.0),
                    child: Container(
                      // margin: EdgeInsets.only(
                      //   left: 30,
                      //   right: 30,
                      // ),
                      height: 300.0,
                      width: MediaQuery.of(context).size.width - 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(10),
                        //     topRight: Radius.circular(10),
                        //     bottomLeft: Radius.circular(10),
                        //     bottomRight: Radius.circular(10)
                        // ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 10,
                            blurRadius: 20,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 60.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text('SIGN UP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 16.0)),
                              ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                              Form(
                                key: _formKey,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.0,
                                            color: Colors.black),
                                        labelStyle: new TextStyle(
                                            color: Colors.grey[600]),
                                        suffixText: 'Edit',
                                        suffixStyle: TextStyle(
                                          color: Colors.orange[800],
                                        ),
                                        labelText: 'Mobile Number'),
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text('OTP Login'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text('Password Login'),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    labelStyle:
                                        new TextStyle(color: Colors.grey[600]),
                                    suffixText: 'Resend',
                                    suffixStyle: TextStyle(
                                      color: Colors.orange[800],
                                    ),
                                    labelText: 'Enter OTP',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: -10,
                            left: 40.0,
                            right: 40.0,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 70.0, right: 70.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Registered()));
                                  },
                                  child: Container(
                                    height: 30.0,
                                    color: Colors.orange[800],
                                    child: Icon(Icons.arrow_forward,
                                        color: Colors.white, size: 30.0),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
