import 'package:easylaze/drawer/profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget drawerData(String y, String z) {
    return ListTile(
      leading: Image.asset(
        'images/' + y + '.png',
        width: 25.0,
        height: 30.0,
      ),
      title: Text(
        z,
        style: TextStyle(fontSize: 15.0, letterSpacing: 0.3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 55.0,
              color: Colors.orange[900],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  Icon(
                    Icons.arrow_left,
                    color: Colors.white,
                    size: 28.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Text(
                    'Hello Vedant',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: drawerData('19', 'Home'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: drawerData('20', 'My Account'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: drawerData('21', 'My Order'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: drawerData('22', 'Notification'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: drawerData('23', 'Contact Us'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: drawerData('24', 'Language A/क'),
            ),
            Divider(height: 10.0, thickness: 1.5, color: Colors.black26),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                title: Text('Terms and Condition',
                    style: TextStyle(
                      color: Colors.black54,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                title: Text('Privacy and Policy',
                    style: TextStyle(
                      color: Colors.black54,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: ListTile(
                title: Text('FAQ',
                    style: TextStyle(
                      color: Colors.black54,
                    )),
              ),
            ),
            Divider(height: 10.0, thickness: 1.5, color: Colors.black26),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: ListTile(
                title: Text('Version 1.0.0',
                    style: TextStyle(
                      color: Colors.black54,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
