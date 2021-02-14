import 'package:easylaze/home/homepage.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_review.dart';
import 'package:flutter/material.dart';

class StackDemo1 extends StatelessWidget {
  Widget grocery(Color coloback, String name, int price, String image) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                child: Row(
              children: <Widget>[
                Container(
                  height: 55.0,
                  width: 110.0,
                  child: Image.asset('images/' + image + '.png'),
                  decoration: new BoxDecoration(
                    color: coloback,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$name',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.1,
                              fontSize: 12.0,
                              color: Colors.orange[800]),
                        ),
                        Text(
                          '₹$price',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
          Container(
            height: 20.0,
            width: 73.0,
            child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title: Text(
            '17148,Tower 12 , Mahagun Mywoods,Sector 16C',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.location_on,
                  size: 30.0,
                ),
                onPressed: null)
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    // The containers in the background
                    new Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        new Container(
                          height: MediaQuery.of(context).size.height * .25,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: AssetImage("images/34.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                    new Container(
                      alignment: Alignment.topCenter,
                      padding: new EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .12,
                          right: 40.0,
                          left: 40.0),
                      child: new Container(
                        height: 145.0,
                        width: MediaQuery.of(context).size.width,
                        child: new Card(
                          color: Colors.grey[50],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4.0,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 13.0, 15.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Irfan Kerana Store',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18.0,
                                              letterSpacing: 0.2),
                                        ),
                                        Text(
                                          'Delivery in 40 mins',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black38,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 50.0,
                                      height: 19.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.blue[700],
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(2.0),
                                          topRight: const Radius.circular(2.0),
                                          bottomLeft:
                                              const Radius.circular(2.0),
                                          bottomRight:
                                              const Radius.circular(2.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.star,
                                              color: Colors.white, size: 11),
                                          Text(
                                            '4.0',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        width: 50.0,
                                        height: 20.0,
                                        decoration: new BoxDecoration(
                                          color: Colors.orange[800],
                                          borderRadius: new BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  'Open',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                    Container(
                                        width: 96.0,
                                        height: 25.0,
                                        decoration: new BoxDecoration(
                                          color: Colors.green[800],
                                          borderRadius: new BorderRadius.all(
                                              Radius.circular(3.0)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            InkWell(
                                              onTap: () {},
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Icon(
                                                  Icons.phone_in_talk,
                                                  color: Colors.white,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              child: Text(
                                                'Call Now',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                                Divider(
                                    height: 20.0,
                                    thickness: 1.0,
                                    color: Colors.black45),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StackDemo()));
                                      },
                                      child: Text(
                                        'Menu',
                                        style: TextStyle(
                                            color: Colors.black38,
                                            letterSpacing: 0.1,
                                            fontSize: 17.0),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'About',
                                            style: TextStyle(
                                                color: Colors.orange[800],
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 0.2,
                                                fontSize: 17.0),
                                          ),
                                        ),
                                        Container(
                                          width: 50.0,
                                          height: 1.5,
                                          color: Colors.orange[800],
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StackDemo3()));
                                      },
                                      child: Text(
                                        'Review',
                                        style: TextStyle(
                                            color: Colors.black38,
                                            letterSpacing: 0.1,
                                            fontSize: 17.0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Irfan Kerana Store',
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'This show is 10 minutes away from your location.',
                            style: TextStyle(
                              letterSpacing: 0.3,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/80.jpg"),
                                  fit: BoxFit.fill),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Hours',
                            style: TextStyle(
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Monday-Friday : 10:00am-7:00pm',
                                  style: TextStyle(
                                    letterSpacing: 0.3,
                                    color: Colors.black45,
                                  ),
                                ),
                                Text(
                                  'Saturday-Sunday : 12:00am-5:00pm',
                                  style: TextStyle(
                                    letterSpacing: 0.3,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Phone',
                            style: TextStyle(
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '9690677688',
                              style: TextStyle(
                                letterSpacing: 0.3,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
