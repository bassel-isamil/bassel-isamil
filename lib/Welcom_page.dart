//elha3rd feha data
import 'dart:convert';
import 'package:flutter/material.dart';
import  'package:http/http.dart'as http;


import 'CustomContainer.dart';
import 'Product.dart';
class Welcom_page extends StatefulWidget {
  const Welcom_page({Key? key}) : super(key: key);

  @override
  _Welcom_pageState createState() => _Welcom_pageState();
}

class _Welcom_pageState extends State<Welcom_page> {
  var ListofProduct= [];
  @override
  Widget build(BuildContext context) {
    return Center(

        child:FutureBuilder(
            future: getProduct(),
            builder: (context,snapshot) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 750,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context,index){
                  return CustomContiner(
                      title: ListofProduct[index].Name,
                      price: ListofProduct[index].price,
                      images: ListofProduct[index].image
                  );
                },
                itemCount: ListofProduct.length,
              );
            })
    );
  }

  @override
  void initState() {//batt3ml mara w7da awl ma object ya tacreate
    getProduct();
  }
  Future<dynamic>getProduct() async {
    //hanshof reponse nag7 wla l2 api dh s7 wla l2

    var response = await http.get(
        Uri.parse('http://retail.amit-learning.com/api/products'));
    if (response.statusCode == 200) {
      print("Suess");
      // print(jsonDecode(response.body)['products']);
      var listofMapsProducts = jsonDecode(response.body)['products'];
      print(jsonDecode(response.body)['products']);
      print('length of list of product :${ListofProduct.length}');
      for (var n in listofMapsProducts) {
        ListofProduct.add(Product.fromJson(n));
      }
      for (var m in ListofProduct) {}
    }
  }
}