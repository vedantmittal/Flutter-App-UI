import 'package:easylaze/placeorder/payment.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int count;

  @override
  void initState() {
    setState(() {
      count = 2;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange[700],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 2.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Delivery Address',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.1,
                            fontSize: 13.0
                          ),
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.1,
                            fontSize: 13.0

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  '17148,Tower 12 , Mahagun Mywoods,Sector 16C',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 10.0
                                  ),
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  'Delivery in 45 min',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black45, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Tomato (1kg)',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.orange[800])),
                          Text(
                            '₹48',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      ),
                      count > 0
                          ? Container(
                              height: 20.0,
                              width: 73.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black, width: 1.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (count > 0) {
                                          count -= 1;
                                        } else {
                                          count = 0;
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      size: 14.0,
                                      color: Colors.orange[800],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.maxFinite,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    count.toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.maxFinite,
                                    color: Colors.grey,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count += 1;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: 14.0,
                                      color: Colors.orange[800],
                                    ),
                                  ),
                                ],
                              ))
                          : Container(
                              height: 20.0,
                              width: 73.0,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    count = 1;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 16.0,
                                      color: Colors.orange[800],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black45, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tomato (1kg)',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.orange[800])),
                            Text(
                              '₹48',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        count > 0
                            ? Container(
                                height: 20.0,
                                width: 73.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 1.2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (count > 0) {
                                            count -= 1;
                                          } else {
                                            count = 0;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 14.0,
                                        color: Colors.orange[800],
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: double.maxFinite,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      count.toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: double.maxFinite,
                                      color: Colors.grey,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          count += 1;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 14.0,
                                        color: Colors.orange[800],
                                      ),
                                    ),
                                  ],
                                ))
                            : Container(
                                height: 20.0,
                                width: 73.0,
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 1;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Add',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 16.0,
                                        color: Colors.orange[800],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Item Total (Inclusive of taxes)',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          '...................................................',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '₹96',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Delivery Charge',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          '.................................',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '₹42',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height:120.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Total ₹138',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 0.1),
                    ),
                  )),
              SizedBox(width: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Payment()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  color: Colors.orange[800],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.3,
                          fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
