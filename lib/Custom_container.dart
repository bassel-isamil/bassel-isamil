import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/Login.dart';
Widget Custom_container(    BuildContext context,
    {required Color color,required String url,required String name}) {
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return Login();
        } //where are you wanna go
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(color: color),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(url),
            ],
          ),
          Row(children: [Text(name,style: TextStyle(color: Colors.white),)],),
        ],
      ),
    ),
  );
}



//@override
//void initState() {
//  get_products();
//}
//}
//get_products() async {
//  final response = await http
//      .get(Uri.parse('https://retail.amit-learning.com/api/products'));
//
//  if (response.statusCode == 200) {
//    // If the server did return a 200 OK response,
//    // then parse the JSON.
//    print("request has been good");
//    print(jsonDecode(response.body));
//  } else {
//    // If the server did not return a 200 OK response,
//    // then throw an exception.
//    throw Exception('Failed to load album');