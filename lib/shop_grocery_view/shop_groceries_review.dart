import 'package:easylaze/home/homepage.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_about.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class StackDemo3 extends StatelessWidget {
  Widget starDisplay() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < 4 ? Icons.star : Icons.star_border,
        );
      }),
    );
  }

  Widget shopReview(String name, double rates) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  '17 June 2020',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(rates.toString(),
                          style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0,
                            letterSpacing: 0.2,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SmoothStarRating(
                          rating: rates,
                          isReadOnly: true,
                          borderColor: Colors.black26,
                          color: Colors.orange[800],
                          size: 20,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 1.0,
                          onRated: (value) {
                            print("rating value -> $value");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '19:48',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    'A good shop with good shopkeeper.A good shop with good shopkeeper.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

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

  var rating = 0.0;

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
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StackDemo1()));
                                      },
                                      child: Text(
                                        'About',
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
                                            'Review',
                                            style: TextStyle(
                                                color: Colors.orange[800],
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 0.2,
                                                fontSize: 17.0),
                                          ),
                                        ),
                                        Container(
                                          width: 60.0,
                                          height: 1.5,
                                          color: Colors.orange[800],
                                        )
                                      ],
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text('4.0 ',
                                            style: TextStyle(
                                              color: Colors.orange[800],
                                              fontWeight: FontWeight.w900,
                                              fontSize: 22.0,
                                              letterSpacing: 0.2,
                                            )),
                                        Text(
                                          '/5',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              letterSpacing: 0.3),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: IconTheme(
                                            data: IconThemeData(
                                              color: Colors.orange[800],
                                              size: 25,
                                            ),
                                            child: starDisplay(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text('191 Reviews'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Excellent',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                        thumbColor: Colors.green,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 1)),
                                    child: Slider(
                                      max: 100,
                                      value: 80,
                                      onChanged: (val) {},
                                      activeColor: Colors.green,
                                      inactiveColor: Colors.black26,
                                    ),
                                  ),
                                  Container(
                                    child: Text('80 Ratings'),
                                  ),
                                ],
                              )),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Good',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                          thumbColor: Colors.green,
                                          thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 1)),
                                      child: Slider(
                                        max: 100,
                                        value: 70,
                                        onChanged: (val) {},
                                        activeColor: Colors.green,
                                        inactiveColor: Colors.black26,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('70 Ratings'),
                                  ),
                                ],
                              )),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Average',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                        thumbColor: Colors.green,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 1)),
                                    child: Slider(
                                      max: 100,
                                      value: 55,
                                      onChanged: (val) {},
                                      activeColor: Colors.orange,
                                      inactiveColor: Colors.black26,
                                    ),
                                  ),
                                  Container(
                                    child: Text('55 Ratings'),
                                  ),
                                ],
                              )),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Poor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                          thumbColor: Colors.green,
                                          thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 1)),
                                      child: Slider(
                                        max: 100,
                                        value: 40,
                                        onChanged: (val) {},
                                        activeColor: Colors.orange,
                                        inactiveColor: Colors.black26,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('40 Ratings'),
                                  ),
                                ],
                              )),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Bad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                          thumbColor: Colors.green,
                                          thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 1)),
                                      child: Slider(
                                        max: 100,
                                        value: 20,
                                        onChanged: (val) {},
                                        activeColor: Colors.red,
                                        inactiveColor: Colors.black26,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text('20 Ratings'),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text('Rate This',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.3,
                                      fontSize: 16.0,
                                    )),
                              ),
                              Center(
                                  child: SmoothStarRating(
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
                              )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text('Users Review',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.3,
                                      fontSize: 16.0,
                                    )),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 25.0,
                                    width: 50.0,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      elevation: 3.0,
                                      child: Text('All'),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.grey[300])),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Container(
                                      height: 25.0,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        elevation: 3.0,
                                        child: Text('Low to High'),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Colors.grey[300])),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Container(
                                      height: 25.0,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        elevation: 3.0,
                                        child: Text('High to Low'),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Colors.grey[300])),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                              SizedBox(
                                height: 35.0,
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    shopReview('Irfan Ansari', 4.0),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    shopReview('Vedant Mittal', 3.5),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    shopReview('Vaibhav Tiwari', 3.0),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
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
