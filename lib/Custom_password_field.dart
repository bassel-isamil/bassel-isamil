import 'package:flutter/material.dart';

class Custom_password_field extends StatefulWidget {
  @override
  String Text_password;
  final password_controller;

  Custom_password_field(this.Text_password, this.password_controller);

  @override
  _Custom_password_fieldState createState() => _Custom_password_fieldState();
}

class _Custom_password_fieldState extends State<Custom_password_field> {
  String password = '';

  bool ispasswordvisible = false;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50,top: 15),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty)
              return ("please enter your E-mail");
            else if (value.length < 8)
              return ("password is not correct ");
          },
          onChanged: (value) {
            setState(() {
              this.password = value;
            });
          },
          onFieldSubmitted: (value) {
            setState(() {
              this.password = value;
            });
          },
          obscureText: ispasswordvisible,
          controller: widget.password_controller,
//          obscureText: true,

//          validator: (value){
//if (value!.length<8)
//  return("please enter your password");
//          },

          decoration: InputDecoration(

//            errorText: "password is wrong",


            border: OutlineInputBorder(),
//  suffixIcon: Icon(Icons.lock,color: Colors.red,), make icon in the end of text field
//prefixIcon: Icon(Icons.lock,color: Colors.red,),  //make icon be in the start of text field
            suffixIcon: IconButton(
              icon: ispasswordvisible
                  ? Icon(Icons.visibility_off) :
              Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  ispasswordvisible = !ispasswordvisible;
                });
              },
            ),
            labelText: widget.Text_password,
          ),
        ),
      ),
    );
  }
}
//
//
//import 'package:flutter/material.dart';
//
//class Custom_password_fields extends StatefulWidget {
//  Custom_password_fields(this.text_password, this.password_controller);
//
//  String text_password;
//  final password_controller;
//
//
//  @override
//  _Custom_password_fieldsState createState() => _Custom_password_fieldsState();
//}
//
//class _Custom_password_fieldsState extends State<Custom_password_fields> {
//  final password_controller = TextEditingController();
//
//
//  String password = '';
//
//  bool ispasswordvisible = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(15),
//      ),
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: TextFormField(
//          validator: (value) {
//            if (value == null || value.isEmpty)
//              return ("please enter your E-mail");
//            else if (value.length < 8)
//              return ("password is not correct ");
//          },
//          onChanged: (value) {
//            setState(() {
//              this.password = value;
//            });
//          },
//          onFieldSubmitted: (value) {
//            setState(() {
//              this.password = value;
//            });
//          },
//          obscureText: ispasswordvisible,
//          controller: password_controller,
////          obscureText: true,
//
////          validator: (value){
////if (value!.length<8)
////  return("please enter your password");
////          },
//
//          decoration: InputDecoration(
////            errorText: "password is wrong",
//
//
//            border: OutlineInputBorder(),
////  suffixIcon: Icon(Icons.lock,color: Colors.red,), make icon in the end of text field
////prefixIcon: Icon(Icons.lock,color: Colors.red,),  //make icon be in the start of text field
//            suffixIcon: IconButton(
//              icon: ispasswordvisible
//                  ? Icon(Icons.visibility_off) :
//              Icon(Icons.visibility),
//              onPressed: () {
//                setState(() {
//                  ispasswordvisible = !ispasswordvisible;
//                });
//              },
//            ),
//            labelText: widget.text_password,
//          ),
//        ),
//      ),
//    );
//  }
//}
