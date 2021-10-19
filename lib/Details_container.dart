import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Details_container extends StatefulWidget {
  @override
  String? image;
  String? title;
  var price;

  Details_container(this.image, this.title, this.price, this.details);

  String? details;

  @override
  _Details_containerState createState() => _Details_containerState();
}

class _Details_containerState extends State<Details_container> {
  var number = 1;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Positioned(
                    top: 4,
                    left: 4,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                    child: Row(
                  children: [Image.network("${widget.image}")],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                    child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [Text("${widget.title}")],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text((widget.price + " \$")),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          number++;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("$number"),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          if(number==1)
                                            number=1;
                                          else
                                            number--;

                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "about the product",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text("${widget.details}")
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//                  RaisedButton(
//                      color: Colors.grey,
//                      shape: StadiumBorder(),
//                      child: (Text(
//                        "add to cart",
//                        style: TextStyle(color: Colors.white),
//                      )),
//                      onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
