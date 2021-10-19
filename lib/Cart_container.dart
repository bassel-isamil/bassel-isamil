import 'package:flutter/material.dart';
import 'package:project/Details_container.dart';

import 'Login.dart';

class Cart_container extends StatefulWidget {
  String? url_image;
  String? addres;
  String? description;
  var price;
  var number = 1;
  Color? color;

  @override
  _Cart_containerState createState() => _Cart_containerState();

  Cart_container(
      this.url_image, this.addres, this.description, this.price, this.color);
}

class _Cart_containerState extends State<Cart_container> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
          return Details_container("${widget.url_image}", "${widget.addres}",
              widget.price, "${widget.description}");
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(color: widget.color),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image.network("${widget.url_image}"),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${widget.addres}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("${widget.description}")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  widget.price,
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                widget.number++;
                                              });
                                            },
                                            child: Icon(Icons.add)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("${widget.number}"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (widget.number == 1)
                                                  widget.number = 1;
                                                else
                                                  widget.number--;
                                              });
                                            },
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
//                                    Row(
//                                      children: [
//                                        Text(
//                                          "least number",
//                                          style: TextStyle(
//                                            decoration:
//                                                TextDecoration.underline,
//                                          ),
//                                        )
//                                      ],
//                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
