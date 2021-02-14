import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


// Future<Posts> getpost() async {
//   final response = await http.get('http://easy.itestbox.in/api/requestHandler.php');

//   if (response.statusCode == 200) {
//     return Posts.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load album');
//   }
// }

// class Posts{
//   final String error;

//   Posts({this.error});

//   factory Posts.fromJson(Map<String,dynamic> json){
//     return Posts(error: json['error']);
//   }
  
// }

// 

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String title) async {
  final http.Response response = await http.post(
    'https://jsonplaceholder.typicode.com/albums',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class Album {
  final int id;
  final String title;

  Album({this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

