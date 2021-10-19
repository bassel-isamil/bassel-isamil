import 'package:flutter/material.dart';
import 'package:project/Cart.dart';
import 'package:project/Menu.dart';
import 'package:project/Welcom_page.dart';
import 'Categories.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var my_screens = [Welcom_page(),Categories(),Cart(),Menu()];
  int my_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      my_screens[my_index],
      bottomNavigationBar: BottomNavigationBar(
       // showSelectedLabels: false, //using to hidden selected label
        //showUnselectedLabels: false,  // using to hidden unselected label
        selectedFontSize: 20,
        unselectedFontSize: 10,
        iconSize: 20,
        backgroundColor: Colors.black,
        selectedItemColor:Colors.white ,  // put color for selected item
        unselectedItemColor: Colors.grey,  // put color for unselected item
        type: BottomNavigationBarType.fixed, //using to format bottom navigation bar style
        currentIndex: my_index,

    onTap:(index){setState(() {
      my_index=index;
    });},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),
          label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
          label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: "Menu"),
        ],
      ),
    );
  }
}
