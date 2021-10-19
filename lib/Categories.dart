import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:project/Category_model.dart';

import 'Container_Category.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  var ListofCategory = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(

          child: FutureBuilder(
              future: getCategory(),
              builder: (context, snapshot) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      //maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5
                  ),
                  itemBuilder: (context, index) {
                    return Container_Category(
                      id: ListofCategory[index].id,
                      category: ListofCategory[index].Name,
                      images: ListofCategory[index].Avatar,
                    );
                  },
                  itemCount:6,
                );
              })
      ),
    );
  }

  @override
  void initState() {
    getCategory();
  }

  Future<dynamic> getCategory() async {
    final response = await http
        .get(Uri.parse('http://retail.amit-learning.com/api/categories'));

    if (response.statusCode == 200) {

      var listofMapsCategory =
      jsonDecode(response.body)['categories'];
      print(jsonDecode(response.body)['categories']);

      for (var n in listofMapsCategory) {
        ListofCategory.add(Category_model.fromJson(n));
      }
      for (var m in ListofCategory) {}
    }

  }
}





















//=--------------------------------------------------------------->...
//import 'dart:convert';
//import 'package:http/http.dart' as http;
//import 'package:flutter/material.dart';
//import 'package:project/Custom_container.dart';
//
//class Categories extends StatefulWidget {
//  @override
//  _CategoriesState createState() => _CategoriesState();
//}
//
//class _CategoriesState extends State<Categories> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(color: Colors.grey),
//      child: GridView.count(
//        primary: false,
//        padding: const EdgeInsets.all(20),
//        crossAxisSpacing: 10,
//        mainAxisSpacing: 10,
//        crossAxisCount: 2,
//        children: <Widget>[
//          Custom_container(
//            context,
//              color: Colors.black,
//              url:
//                  "data:image/jpeg;base64,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"
//                  "wDFJDujyejDYhcU7szIHygupALqUJIVF+azdfXLEtM2kGYQhAIQhA//2Q==",
//              name: "electronics"),
//TextButton(onPressed: (){
//  get_categories();
//}, child: Text("get categories"))
//
//        ],
//      ),
//    );
//  }
//}
//
//@override
//void initState() {
//  get_categories();
//}
//
//get_categories() async {
//  final response = await http
//      .get(Uri.parse('https://retail.amit-learning.com/api/categories'));
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
//  }
//}