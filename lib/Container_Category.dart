import 'package:flutter/material.dart';

class Container_Category extends StatefulWidget {
  Container_Category(
      {this.images =
          'https://cdn.cliqueinc.com/posts/295272/new-york-fashion-week-spring-summer-2022-295272-1631825649004-main.700x0c.jpg',
      this.category = 'category',
      this.id = 5});

  String category;
  String images;
  int id;

  @override
  _Container_CategoryState createState() => _Container_CategoryState();
}

class _Container_CategoryState extends State<Container_Category> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                '${widget.images}',
              ),
              Text(
                '${widget.category}',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    backgroundColor: Colors.black26,
                    decoration: TextDecoration.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
