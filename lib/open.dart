import 'package:flutter/material.dart';

import 'homepage.dart';

class Open extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text('Easy',style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width:10.0),
                Text('For',style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.orange[800],
                ),),
                SizedBox(width:10.0),
                Text('Lazy',style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                ),)
              ],),
            ),
             SizedBox(height:70.0),
             Container(
               width: 200.0,
               child: ButtonTheme(
                 height: 25.0,
                 child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(Radius.circular(15.0))),
                      color: Colors.orange[800],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.gps_fixed,color: Colors.white,size: 20.0,),
                          SizedBox(width:5.0),
                          Text('Use My Current Location',style: TextStyle(
                            color:Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.3
                          ),),
                        ],
                      ),),
               ),
             ),
             SizedBox(height:20.0),
             Text('OR',style: TextStyle(
               color:Colors.orange[800],
               fontWeight: FontWeight.bold,
             ),),
             SizedBox(height:25.0),
             Container(
                      height: 24.0,
                      width: 240.0,
                      child: OutlineButton(onPressed: () { 
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),
                        );
                       },
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.search,size:20.0,color: Colors.orange[800],),
                              SizedBox(width: 4.0,),
                              Text('Search for your delivery location',style: TextStyle(
                                color:Colors.orange[800],
                                fontSize: 12.0,
                              ),)
                            ],
                          )
                        ),
                      ),
                    ),
          ],
        )
      ),
    );
  }
}