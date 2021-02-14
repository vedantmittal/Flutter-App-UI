import 'package:easylaze/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          return false;
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.orange[800],
              title: Text('Order Details',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0)),
              centerTitle: true,
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: ListTile(
                      title: Text('Your order id - xxxxxxxxx'),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('June 27,2020 16:45'),
                      ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: ListTile(
                      title: Text('Order Details'),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Food 1'),
                            Text('Food 2'),
                          ],
                        ),
                      ),
                      trailing: Text(
                        '₹138',
                        style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: ListTile(
                      title: Text('Delivered to'),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('17148, Tower 12, Mahagun Mywoods,'),
                            Text('Sector 16C, Delhi, India'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.check_circle, color: Colors.green),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Order received',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                              width: 1.0, height: 50.0, color: Colors.green),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.check_circle, color: Colors.green),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Preparing your order',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.more_vert, color: Colors.black45),
                        Icon(Icons.more_vert, color: Colors.black45),
                        Row(
                          children: <Widget>[
                            Icon(Icons.more_vert, color: Colors.black45),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Out for Delivery',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.more_vert, color: Colors.black45),
                        Icon(Icons.more_vert, color: Colors.black45),
                        Row(
                          children: <Widget>[
                            Icon(Icons.more_vert, color: Colors.black45),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Delivered',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: ListTile(
                      title: Text("Don't forget to rate us"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SmoothStarRating(
                        rating: rating,
                        isReadOnly: false,
                        borderColor: Colors.black26,
                        color: Colors.orange[800],
                        size: 30,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                        onRated: (value) {
                          print("rating value -> $value");
                        },
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              border: Border.all(color: Colors.orange[800])),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Write a review',
                                style: TextStyle(
                                  color: Colors.orange[800],
                                )),
                          )),
                      SizedBox(height: 10.0)
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black54,
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
