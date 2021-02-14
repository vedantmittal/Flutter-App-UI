import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> createAlbum(String api_token) async {
  final http.Response response = await http.post(
    'http://easy.itestbox.in/api/requestHandler.php',body: { // TODO:
      "GET_FEATURE": " ",
      "api_token":api_token,
      "feature_detail":
          "a",
    });
  

  if (response.statusCode == 200) {
    print(response.body);
    return (json.decode(response.body)["result"] as List).map((e) => Album.fromJson(e)).toList();
  } else {
    throw Exception('Failed to create album.');
  }
}

class Album {
  // final List result;
  final String name;
  final String tag;
  final String link;
  final String image;

  Album({this.name, this.tag, this.link, this.image});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      tag: json['tag'],
      link: json['link'],      
      image: json['image'],

    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<List<Album>> _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'Enter api_token'),
                    ),
                    RaisedButton(
                      child: Text('Create Data'),
                      onPressed: () {
                        setState(() {
                          _futureAlbum = createAlbum(_controller.text);
                        });
                      },
                    ),
                  ],
                )
              : FutureBuilder<List<Album>>(
                  future: _futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index){
                          return ListTile(
                            
                              title: Text(snapshot.data[index].name),
                              subtitle: Text(snapshot.data[index].tag),
                              trailing: Text(snapshot.data[index].link),
                              // Text(snapshot.data[index].image),

                          );
                        });
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }
}
