import 'package:easylaze/placeorder/trackorder.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu_chnge.dart';
import 'package:flutter/material.dart';

class Confirmed extends StatefulWidget {
  @override
  _ConfirmedState createState() => _ConfirmedState();
}

class _ConfirmedState extends State<Confirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.check, color: Colors.green),
                      backgroundColor: Colors.white,
                      radius: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'THANK YOU',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Your order is confirmed',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            letterSpacing: 0.3),
                      ),
                    ),
                    Container(
                      height: 60.0,
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Your Order ID',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 18.0),
                          ),
                          Text(
                            'XXXXXXXXXX',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Your Order Amount',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 18.0),
                          ),
                          Text(
                            'XXXXXXXXXX',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Order Details',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 18.0),
                          ),
                          Text(
                            'XXXXXXXXXX',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Payment Method',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 18.0),
                          ),
                          Text(
                            'XXXXXXXXXX',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black54,
                    ),
                    Container(
                      height: 120.0,
                    ),
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackOrder()),
                            );
                          },
                          color: Colors.grey[400],
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Text('Track Order',
                                style: TextStyle(
                                    color: Colors.black, letterSpacing: 0.4)),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuAdd()),
                            );
                          },
                          color: Colors.orange[800],
                          child: Text('Continue Shopping',
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 0.4)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
