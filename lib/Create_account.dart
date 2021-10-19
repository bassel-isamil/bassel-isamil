import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/Custom_email_field.dart';
import 'Custom_password_field.dart';
import 'package:project/Login.dart';
import 'package:project/Name.dart';
import 'package:http/http.dart' as http;

import 'Home.dart';

class Create_account extends StatefulWidget {
  @override
  _Create_accountState createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {
  @override
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    TextEditingController password;
    TextEditingController email;
    TextEditingController name;
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        "data:image/jpeg;base64,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"
                        "mimLYpCS9mq06xIDTiRcYNAwO5CEAVecNRLFHTSzF0UdtRmqwauq0tbiBc4EjElIOHQhAHDo4dCEAcOrN0JyXdWdFP8A768QgLTQhCA//9k=")
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Name("name", name = TextEditingController())),

//                      TextFormField(
//                        validator: (value) {
//                          if (value == null || value.isEmpty)
//                            return ("please enter your name ");
//                        },
//                        decoration: InputDecoration(
//                            labelText: "Name", border: OutlineInputBorder(),suffixIcon: Icon(Icons.person)),
//                      ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Custom_email_field(
                          "E-mail", email = TextEditingController()),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Custom_password_field(
                            "password", password = TextEditingController())),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
//                      onPrimary: Colors.yellow, // foreground
                        ),
                        onPressed: () {
                          print(name.text);
                          print(email.text);
                          print(password.text);
                          register(
                              context, name.text, email.text, password.text);
                          setState(() {
//                            if (_formkey.currentState!.validate()) {
//                              ScaffoldMessenger.of(context).showSnackBar(
//                                  const SnackBar(
//                                      content: Text("prossing data")));
//                            }
                          });
                        },
                        child: Text("Login")),
                    SizedBox(
                      height: 10,
                    ),
                    Text("already have an acount "),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext) {
                            return Login();
                          }));
                        },
                        child: Text(
                          "go login",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              backgroundColor: Colors.grey,
                              fontSize: 20),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

register(
    BuildContext context, String name, String email, String password) async {
  final response = await http.post(
    Uri.parse('https://retail.amit-learning.com/api/register'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'email': email,
      'password': password,
    }),
  );

  if (response.statusCode == 201) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
      return Home();
    }));
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print("user registered successfully");
    print(jsonDecode(response.body)['token']);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("this account has been taken ")));

    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create account.');
  }
}
