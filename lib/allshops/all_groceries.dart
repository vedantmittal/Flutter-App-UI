import 'package:easylaze/filters/filter_grocery.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_menu.dart';
import 'package:flutter/material.dart';

class Groceries extends StatefulWidget {
  @override
  _GroceriesState createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  void _showSettingPanel_all() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(child: DrawerData2());
        });
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

  Widget viewpreviousshop() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StackDemo()),
        );
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 150.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  image: new DecorationImage(
                    image: AssetImage("images/13.png"),
                    fit: BoxFit.fill,
                  )),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Irfan Kerana Store',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0,
                        letterSpacing: 0.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Container(
                    width: 26.0,
                    height: 12.0,
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
                        Icon(Icons.star, color: Colors.white, size: 8),
                        Text(
                          '4.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Dal, Rice, Oil and all groceries \n₹300 per person | 40 mins',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/33.png"),
                    fit: BoxFit.fill,
                  )),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Previously Visited',
                      style: TextStyle(
                          color: Colors.orange[800],
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.3,
                          fontSize: 14.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: <Widget>[
                        viewpreviousshop(),
                        SizedBox(width: 5.0),
                        viewpreviousshop(),
                        SizedBox(width: 5.0),
                        viewpreviousshop(),
                        SizedBox(width: 5.0),
                        viewpreviousshop(),
                        SizedBox(width: 5.0),
                        viewpreviousshop(),
                        SizedBox(width: 5.0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          child: Text(
                            'Stores Near You',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.w900,
                                letterSpacing: 0.3,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
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
                                  _showSettingPanel_all();
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
                    ],
                  ),
                ),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 10.0),
                viewshops1(),
                SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
