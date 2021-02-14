import 'package:easylaze/home/homepage.dart';
import 'package:flutter/material.dart';

class DrawerData extends StatefulWidget {
  @override
  _DrawerDataState createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  String _result = 'Groceries';
  int _radioValue;
  double _value = 1.0;
  double _starValue = 300;
  double _endValue = 400;

  @override
  void initState() {
    setState(() {
      _radioValue = 0;
      _starValue = 300.0;
      _endValue = 500.0;
      _value = 3.0;
    });
    super.initState();
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _result = 'Groceries';
          break;
        case 1:
          _result = 'Medicine';
          break;
        case 2:
          _result = 'Fruits and Vegetables';
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
          SizedBox(height: 25.0),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                      child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20.0),
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
                      'Groceries',
                      // style: new TextStyle(fontSize: 14.0),
                    ),
                    new Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: Colors.orange[800],
                    ),
                    new Text(
                      'Medicine',
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
                      'Fruits and Vegetables',
                      // style: new TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(height: 10.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height: 20.0),
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
          Divider(height: 10.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Price',
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
              ((_starValue.toInt()).toString() +
                  '-' +
                  (_endValue.toInt()).toString()),
              style: TextStyle(
                  letterSpacing: 0.2,
                  fontSize: 17.0,
                  color: Colors.orange[600]),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: RangeSlider(
                  values: RangeValues(_starValue, _endValue),
                  min: 10.0,
                  max: 1000.0,
                  activeColor: Colors.orange[600],
                  onChanged: (values) {
                    setState(() {
                      _starValue = values.start.roundToDouble();
                      _endValue = values.end.roundToDouble();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('₹10'),
                    Text('₹1000'),
                  ],
                ),
              ),
            ],
          ),
          Divider(height: 10.0, thickness: 1.5, color: Colors.black26),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _radioValue = null;
                      _starValue = 10.0;
                      _endValue = 100.0;
                      _value = 3.0;
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
                      MaterialPageRoute(builder: (context) => HomePage()),
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
