import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomContiner(
    {var image =
        'https://th.bing.com/th/id/R.4526223b10d1d80bdbe0caa320ba3311?rik=i3p%2fv4V2X6Q77g&riu=http%3a%2f%2fwww.asianart.com%2fexhibitions%2fchangdaichien%2flarge%2f01_B73D4.jpg&ehk=CaH42b5l3X0BrQsL39CfeAMrCvGor9BUObyc7vVIAXI%3d&risl=&pid=ImgRaw&r=0',
    var title = 'Title',
    var description = 'description',
    int price = 200,
    images})
{
  List lista=[];
  return InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(

            //alignment: Alignment.center,
            //  margin:EdgeInsets.all(5.0),
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "$image",

                    ),
                  ],
                )),
                SizedBox(height: 10,),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '$title',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '$description',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$price EGP',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        ElevatedButton(
                            onPressed: () {

                            },
                            child: Icon(
                              Icons.shopping_basket,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ))
                      ],
                    )
                  ],
                )),


              ],
            )),
      ));
}
