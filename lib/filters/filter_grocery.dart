import 'package:easylaze/allshops/all_groceries.dart';
import 'package:flutter/material.dart';

class DrawerData2 extends StatefulWidget {
  @override
  _DrawerData2State createState() => _DrawerData2State();
}

class _DrawerData2State extends State<DrawerData2> {
  String _result = 'Popularity';
  String _result1 = 'Any Discount';
  int _radioValue;
  int _radioValue1;
  double _value = 1.0;

  @override
  void initState() {
    setState(() {
      _radioValue = 0;
      _radioValue1 = 0;
      _value = 3.0;
    });
    super.initState();
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _result = 'Popularity';
          break;
        case 1:
          _result = 'Rating:High to low';
          break;
        case 2:
          _result = 'Distance';
          break;
        case 3:
          _result = 'Cost:Low to High';
          break;
        case 4:
          _result = 'Cost:High to low';
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue) {
        case 0:
          _result1 = 'Any Discount';
          break;
        case 1:
          _result1 = '20% off or more';
          break;
        case 2:
          _result1 = '30% off or more';
          break;
        case 3:
          _result1 = '40% off';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow[50],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Sort Filters',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.2,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: CircleAvatar(
                    child: InkWell(
                      child: Image.asset('images/52.png'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 0.2,
                fontSize: 17.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              _result,
              style: TextStyle(
                  letterSpacing: 0.2,
                  fontSize: 17.0,
                  color: Colors.orange[600]),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Popularity',
                            // style: new TextStyle(fontSize: 14.0),
                          ),
                          new Radio(
                            value: 1,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Ratings:Low to High',
                            // style: new TextStyle(
                            //   fontSize: 14.0,
                            // ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Distance',
                            // style: new TextStyle(fontSize: 13.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 3,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Cost:Low to High',
                            // style: new TextStyle(fontSize: 14.0),
                          ),
                          new Radio(
                            value: 4,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Cost:High to Low',
                            // style: new TextStyle(
                            //   fontSize: 14.0,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 5.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height:10.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Ratings',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 0.2,
                fontSize: 17.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              (_value.toInt()).toString(),
              style: TextStyle(
                  letterSpacing: 0.2,
                  fontSize: 17.0,
                  color: Colors.orange[600]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Slider(
                  value: _value,
                  min: 1.0,
                  max: 5.0,
                  divisions: 4,
                  onChangeStart: (double value) {
                    print('Start value is ' + value.toString());
                  },
                  onChangeEnd: (double value) {
                    print('Finish value is ' + value.toString());
                  },
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue;
                    });
                  },
                  activeColor: Colors.orange[600],
                  inactiveColor: Colors.black26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('1'),
                    Text('2'),
                    Text('3'),
                    Text('4'),
                    Text('5'),
                  ],
                ),
              ),
            ],
          ),
          Divider(height: 5.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Discount',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 0.2,
                fontSize: 17.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              _result1,
              style: TextStyle(
                  letterSpacing: 0.2,
                  fontSize: 17.0,
                  color: Colors.orange[600]),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange2,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            'Any Discount',
                            // style: new TextStyle(fontSize: 14.0),
                          ),
                          new Radio(
                            value: 1,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange2,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            '20% off or more',
                            // style: new TextStyle(
                            //   fontSize: 14.0,
                            // ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange2,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            '30% off or more',
                            // style: new TextStyle(fontSize: 13.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 3,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange2,
                            activeColor: Colors.orange[800],
                          ),
                          new Text(
                            '40% off',
                            // style: new TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 5.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _radioValue = null;
                      _value = 3.0;
                      _radioValue1 = null;
                    });
                  },
                  child: Text(
                    'Clear All',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 0.1),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
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
                    'Apply Filter',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
