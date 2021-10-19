
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Welcom_page.dart';

import 'Details_container.dart';

Widget Welcom_container(
    BuildContext context,
    {required Color color,
    required String url_image,
    required String addres,
    required String description,
    required var price}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return Details_container(
              "$url_image", "$addres", price, "$description");
        } //where are you wanna go
            ),
      );
    },
    child: Container(
        decoration: BoxDecoration(color: color),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [Image.network(url_image)],
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      addres,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(description),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.add_box)),
                        Text("$price \$"),
                        TextButton(onPressed: (){}, child: Text("get products"))
                      ],
                    )
                  ],
                ),
              ],
            )),
          ],
        )),
  );
}




//------------------------------------------------------------------------------------------
//import 'package:flutter/material.dart';
//
//class Welcom_container extends StatefulWidget {
//  Welcom_container(
//      {this.image_url =
//          'https://cdn.cliqueinc.com/posts/295272/new-york-fashion-week-spring-summer-2022-295272-1631825649004-main.700x0c.jpg',
//      this.address = 'address',
//      this.describtion = 'describtion',
//      this.price});
//
//  String image_url;
//  String address;
//  String describtion;
//  var price;
//
//  @override
//  _Welcom_containerState createState() => _Welcom_containerState();
//}
//
//class _Welcom_containerState extends State<Welcom_container> {
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//        onTap: () {},
//        child: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Container(
//            color: Colors.grey,
//            child: Column(
//              children: [
//                Expanded(
//                  flex: 2,
//                  child: Row(
//                    children: [
//                      Image.network("${widget.image_url}"),
//                    ],
//                  ),
//                ),
//                Expanded(
//                  flex: 1,
//                  child: Column(
//                    children: [
//                      Row(
//                        children: [Text("${widget.address}")],
//                      ),
//                      Row(
//                        children: [Text("${widget.describtion}")],
//                      ),
//                      Row(
//                        children: [
//                          Text("${widget.price}"),
//                          IconButton(onPressed: () {}, icon: Icon(Icons.add))
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ));
//  }
//}

