import 'package:easylaze/apitest/aaaa.dart';
import 'package:easylaze/allshops/all_groceries.dart';
import 'package:easylaze/drawer/drawer.dart';
import 'package:easylaze/filters/filters_home.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showSettingPanel() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(child: DrawerData());
        });
  }

  Widget viewimage(String y) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'images/' + y,
          height: 80.0,
        ),
      ),
    );
  }

  Widget groceries(String v) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: Image.asset(
          'images/' + v,
          height: 55.0,
        ),
      ),
    );
  }

  Widget viewpremium(String x) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'images/' + x,
        ),
      ),
    );
  }

  Widget viewshops1() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StackDemo()),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow[50],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/13.png',
                    height: 90.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Irfan Kerana Store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              letterSpacing: 0.15),
                        ),
                        Text(
                          'Dal, Rice, Oil and all groceries \n ₹300 per person | 40 mins',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '40 % off - use code easy for lazy',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[800],
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Full precaution | uses mask | hand wash \n Temperature check',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 36.0,
                    height: 20.0,
                    decoration: new BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(2.0),
                        topRight: const Radius.circular(2.0),
                        bottomLeft: const Radius.circular(2.0),
                        bottomRight: const Radius.circular(2.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.white, size: 11),
                        Text(
                          '4.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget viewshops2() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow[50],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/15.png',
                  height: 90.0,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Vedant Medical Store',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            letterSpacing: 0.15),
                      ),
                      Text(
                        'Pain Killers, Fever and cough.. \n ₹290 per person | 39 mins',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '60 % off - use code easy for lazy',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[800],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Full precaution | uses mask | hand wash \n Temperature check',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 36.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(2.0),
                      topRight: const Radius.circular(2.0),
                      bottomLeft: const Radius.circular(2.0),
                      bottomRight: const Radius.circular(2.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.white, size: 11),
                      Text(
                        '4.2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget viewshops3() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow[50],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/17.png',
                  height: 90.0,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Vaibhav Bhajiwala',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            letterSpacing: 0.15),
                      ),
                      Text(
                        'Fresh Vegetables and Fruits.. \n ₹200 per person | 20 mins',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '30 % off - use code easy for lazy',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[800],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Full precaution | uses mask | hand wash \n Temperature check',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 36.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(2.0),
                      topRight: const Radius.circular(2.0),
                      bottomLeft: const Radius.circular(2.0),
                      bottomRight: const Radius.circular(2.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.white, size: 11),
                      Text(
                        '4.2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> litems = ['1.png', '2.png', '1.png'];
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title: Text(
            '17148,Tower 12 , Mahagun Mywoods,Sector 16C',
            style: TextStyle(
              fontSize: 15.0,
            ),
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 30.0,
                      padding:
                          EdgeInsets.only(left: 45.0, right: 30.0, top: 3.0),
                      child: OutlineButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Container(
                            child: Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 10.0)),
                            Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.orange[800],
                            ),
                            Padding(padding: EdgeInsets.only(left: 6.0)),
                            Text(
                              'Search for grocery, medicine... ',
                              style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 13.0,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 25.0, top: 10.0, right: 10.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.orange[800],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.25,
                          ),
                        ),
                        Container(
                          width: 42.0,
                          height: 1.5,
                          color: Colors.orange[800],
                        )
                      ],
                    ),
                    SizedBox(width: 25.0),
                    Column(
                      children: <Widget>[
                        Text(
                          'Store',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.25,
                          ),
                        ),
                        Container(
                          width: 32.0,
                          height: 1.5,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(width: 25.0),
                    Column(
                      children: <Widget>[
                        Text(
                          'News',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.25,
                          ),
                        ),
                        Container(
                          width: 32.0,
                          height: 1.5,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    viewimage('1.png'),
                    viewimage('2.png'),
                    viewimage('1.png'),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Catchy Tagline For Delivery',
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                        ),
                      ),
                      Text(
                        'or something about us',
                        style: TextStyle(
                          color: Colors.grey[500],
                          letterSpacing: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    viewpremium('33.png'),
                    viewpremium('4.png'),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 2.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        fontSize: 16.0),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        groceries('5.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Daal',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('6.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Rice',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('7.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Tomato',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('8.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Potato',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Medicine',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        fontSize: 16.0),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        groceries('9.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Pain killers',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('10.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Fever',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('11.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Others',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        groceries('12.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                              child: Text(
                            'Others',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 70.0,
                      height: 20.0,
                      decoration: new BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius:
                            new BorderRadius.all(Radius.circular(2.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _showSettingPanel();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Filters',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      )),
                  SizedBox(width: 25.0),
                  Container(
                      width: 70.0,
                      height: 20.0,
                      decoration: new BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius:
                            new BorderRadius.all(Radius.circular(2.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _showSettingPanel();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      )),
                  SizedBox(width: 25.0),
                  Container(
                      width: 60.0,
                      height: 20.0,
                      decoration: new BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius:
                            new BorderRadius.all(Radius.circular(2.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _showSettingPanel();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Cost',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      )),
                ],
              )),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        fontSize: 16.0),
                  ),
                ),
              ),
              viewshops1(),
              SizedBox(height: 10.0),
              viewshops1(),
              SizedBox(height: 10.0),
              viewshops1(),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 2.0, 10.0, 0.0),
                child: Container(
                  child: Image.asset(
                    'images/14.png',
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              ButtonTheme(
                height: 33.0,
                minWidth: 180.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Groceries()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  color: Colors.orange[800],
                  child: Text(
                    'View All Groceries',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Medicine',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        fontSize: 16.0),
                  ),
                ),
              ),
              viewshops2(),
              SizedBox(height: 10.0),
              viewshops2(),
              SizedBox(height: 10.0),
              viewshops2(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                child: Container(
                  child: Image.asset(
                    'images/16.png',
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              ButtonTheme(
                height: 33.0,
                minWidth: 180.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  color: Colors.orange[800],
                  child: Text(
                    'View All Medicine',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Vegetables',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        fontSize: 16.0),
                  ),
                ),
              ),
              viewshops3(),
              SizedBox(height: 10.0),
              viewshops3(),
              SizedBox(height: 10.0),
              viewshops3(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                child: Container(
                  child: Image.asset(
                    'images/18.png',
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              ButtonTheme(
                height: 33.0,
                minWidth: 180.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  color: Colors.orange[800],
                  child: Text(
                    'View All Vegetables',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
              Container(
                height: 80.0,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
