import 'package:easylaze/placeorder/checkout.dart';
import 'package:easylaze/register/signup.dart';
import 'package:easylaze/home/homepage.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_about.dart';
import 'package:easylaze/shop_grocery_view/shop_groceries_review.dart';
import 'package:flutter/material.dart';

class MenuAdd extends StatefulWidget {
  @override
  _MenuAddState createState() => _MenuAddState();
}

class _MenuAddState extends State<MenuAdd> {
  void _showCheckOutPanel() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(child: CheckOut());
        });
  }

  int _radioValue;
  String _result = 'Biscuits and Snacks';
  int count;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _result = 'All';
          break;
        case 1:
          _result = 'Rice Products';
          break;
        case 2:
          _result = 'Oil Products';
          break;
        case 3:
          _result = 'Biscuits and Snacks';
          break;
        case 4:
          _result = 'Flour Products';
          break;
        case 5:
          _result = 'Sugar and Salt';
          break;
      }
    });
  }

  void initState() {
    setState(() {
      count = 1;
      _radioValue = 3;
      _result = 'Biscuits and Snacks';
    });
    super.initState();
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
          count > 0
              ? Container(
                  height: 20.0,
                  width: 73.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: InkWell(
              onTap: () {
                _showCheckOutPanel();
              },
              child: Container(
                height: 30.0,
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                child: Text(
                                  count.toString(),
                                  style: TextStyle(color: Colors.blue[800]),
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                'ITEMS',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Checkout',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
                                    Column(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'Menu',
                                            style: TextStyle(
                                                color: Colors.orange[800],
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 0.2,
                                                fontSize: 17.0),
                                          ),
                                        ),
                                        Container(
                                          width: 42.0,
                                          height: 1.5,
                                          color: Colors.orange[800],
                                        )
                                      ],
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
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 30.0,
                              padding: EdgeInsets.only(
                                  left: 45.0, right: 30.0, top: 3.0),
                              child: OutlineButton(
                                onPressed: () {},
                                borderSide: BorderSide(
                                    width: 0.5, color: Colors.black54),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 15.0)),
                                    Icon(
                                      Icons.search,
                                      size: 20.0,
                                      color: Colors.orange[800],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.0)),
                                    Text(
                                      'Search by item',
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
                      SizedBox(height: 20.0),
                      Container(
                          child: RaisedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => new AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    content: Builder(
                                      builder: (context) {
                                        return Container(
                                          height: 350.0,
                                          width: 180.0,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  height: 50.0,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: Colors.yellow[50],
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0,
                                                            right: 10.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              'Sort By Category',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                letterSpacing:
                                                                    0.2,
                                                                fontSize: 17.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              _result,
                                                              style: TextStyle(
                                                                color: Colors
                                                                        .orange[
                                                                    800],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        CircleAvatar(
                                                          minRadius: 10.0,
                                                          maxRadius: 15.0,
                                                          child: InkWell(
                                                            child: Image.asset(
                                                                'images/52.png'),
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 0,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'All',
                                                              // style: new TextStyle(fontSize: 14.0),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 0.1,
                                                            color:
                                                                Colors.black26),
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 1,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'Rice Products',
                                                              // style: new TextStyle(
                                                              //   fontSize: 14.0,
                                                              // ),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 0.1,
                                                            color:
                                                                Colors.black26),
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 2,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'Oil Products',
                                                              // style: new TextStyle(fontSize: 13.0),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 0.1,
                                                            color:
                                                                Colors.black26),
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 3,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'Biscuits and Snacks',
                                                              // style: new TextStyle(fontSize: 13.0),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 0.1,
                                                            color:
                                                                Colors.black26),
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 4,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'Flour Products',
                                                              // style: new TextStyle(fontSize: 13.0),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 0.1,
                                                            color:
                                                                Colors.black26),
                                                        Row(
                                                          children: <Widget>[
                                                            new Radio(
                                                              value: 5,
                                                              groupValue:
                                                                  _radioValue,
                                                              onChanged:
                                                                  _handleRadioValueChange,
                                                              activeColor:
                                                                  Colors.orange[
                                                                      800],
                                                            ),
                                                            new Text(
                                                              'Sugar and Salt',
                                                              // style: new TextStyle(fontSize: 13.0),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        );
                                      },
                                    ),
                                  ));
                        },
                        color: Colors.white,
                        elevation: 0.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Search By Category',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ],
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            grocery(Colors.orange[200], 'Toor daal(1kg)', 199,
                                '36'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(
                                Colors.orange[100], 'Potato(1kg)', 40, '37'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.blue[100], 'Premium Rice(5kg)', 675,
                                '38'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.red[100], 'Tomato(1kg)', 48, '39'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(
                                Colors.orange[100], 'Potato(1kg)', 40, '37'),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Rice Products',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black45),
                            SizedBox(
                              height: 10.0,
                            ),
                            grocery(Colors.blue[100], 'Premium Rice(5kg)', 675,
                                '38'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.orange[200], 'Rozana Rice(5kg)', 775,
                                '40'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.red[100], 'Poha(1/2kg)', 675, '41'),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Flour Products',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black45),
                            SizedBox(
                              height: 10.0,
                            ),
                            grocery(Colors.orange[200], 'Aashirvaad Atta(5kg)',
                                190, '43'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.blue[100], 'Prabhu Sooji(1/2kg)', 75,
                                '44'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(Colors.orange[100], 'Sattu besan(1/2kg)',
                                65, '45'),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Oil Products',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black45),
                            SizedBox(
                              height: 10.0,
                            ),
                            grocery(Colors.blue[100], 'Fortune Refine(1kg)',
                                110, '46'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(
                                Colors.red[100], 'Desi Ghee(1kg)', 360, '47'),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Sugar and Salt',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black45),
                            SizedBox(
                              height: 10.0,
                            ),
                            grocery(
                                Colors.blue[100], 'Sugar Icing(1kg)', 50, '48'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(
                                Colors.red[100], 'Tata Salt(1kg)', 30, '49'),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Biscuits and Snacks',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black45),
                            SizedBox(
                              height: 10.0,
                            ),
                            grocery(Colors.yellow[100], 'Parle-G Biscuit', 50,
                                '50'),
                            SizedBox(
                              height: 15.0,
                            ),
                            grocery(
                                Colors.red[100], 'Namkeen(1/2kg)', 80, '51'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          width: 140.0,
          child: FittedBox(
            child: FloatingActionButton.extended(
              onPressed: () {
                // Add your onPressed code here!
              },
              label: Text('Upload Receipt'),
              icon: Icon(Icons.file_upload),
              backgroundColor: Colors.orange[800],
            ),
          ),
        ),
      ),
    );
  }
}
