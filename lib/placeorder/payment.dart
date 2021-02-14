import 'package:easylaze/placeorder/orderconfirmed.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int val;
  int card;

  @override
  void initState() {
    setState(() {
      val = 0;
      card = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.orange[800],
            title: Text('Choose Payment Option',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0)),
            centerTitle: true,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0,top: 5.0),
            child: Row(
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
                        MaterialPageRoute(builder: (context) => Confirmed()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    color: Colors.orange[800],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Place Order',
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
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black54, width: 0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Having a coupon/referal code?',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                decoration: TextDecoration.underline)),
                        Container(
                          height: 20.0,
                          width: 73.0,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {});
                            },
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.orange[800],
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 12.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Container(
                      child: Row(
                    children: <Widget>[
                      val == 0
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  val = 1;
                                });
                              },
                              child: Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.black,
                                size: 25.0,
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  val = 0;
                                });
                              },
                              child: Icon(
                                Icons.check_box,
                                color: Colors.orange[800],
                                size: 25.0,
                              ),
                            ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Easy for lazy Wallet',
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 0.3),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  card == 0
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              card = 1;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black54, width: 0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                      child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.credit_card,
                                        color: Colors.orange[800],
                                        size: 35,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text('Credit/Debit Cards',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.orange[800], size: 30.0),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          height: 210.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black54, width: 0.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    card = 0;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Container(
                                          child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.credit_card,
                                            color: Colors.orange[800],
                                            size: 35,
                                          ),
                                          SizedBox(width: 10.0),
                                          Text('Credit/Debit Cards',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              )),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: Icon(Icons.arrow_drop_down,
                                          color: Colors.orange[800],
                                          size: 30.0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black54),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black54),
                                      hintText: '       Card Number'),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black54),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black54),
                                      hintText: '       Name on Card'),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black54),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: Colors.black54),
                                            hintText: '       MM'),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black54),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: Colors.black54),
                                            hintText: '       YY'),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black54),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: Colors.black54),
                                            hintText: '       CVV'),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.92),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                                child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                  color: Colors.orange[800],
                                  size: 35,
                                ),
                                SizedBox(width: 10.0),
                                Text('Netbanking',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    )),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.arrow_drop_down,
                                color: Colors.orange[800], size: 30.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Pay Using UPIs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: ExactAssetImage('images/phonepe.png'),
                        radius: 30.0,
                      ),
                      CircleAvatar(
                        backgroundImage: ExactAssetImage('images/gpay.png'),
                        radius: 32.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        backgroundImage: ExactAssetImage('images/paytm.png'),
                        radius: 32.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
