import 'package:flutter/material.dart';

class Custom_email_field extends StatefulWidget {
  Custom_email_field(this.text_email,this.email_controller);

  String text_email;
  final email_controller;


  @override
  _Custom_email_fieldState createState() => _Custom_email_fieldState();
}

class _Custom_email_fieldState extends State<Custom_email_field> {
  @override
  void initState(){
    super.initState();
    widget.email_controller.addListener(() {setState(() {

    });});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,top: 15),
          child: TextFormField(

              controller: widget.email_controller,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty)
                  return ("please enter your E-mail");
                else if (!value.contains("@"))
                  return ("E-mail is not correct ");
              },
              decoration: InputDecoration(

//            suffixIcon: Icon(Icons.alternate_email,color: Colors.blue,), //make icon in the end of text field
//            prefixIcon: Icon(Icons.alternate_email,color: Colors.blue,), //make icon in the start of text field


                suffixIcon:widget.email_controller.text.isEmpty
                ? Container(width: 0,):

//                email_controler.text.isEmpty           using to hidden close icon from text field
//                ? Container(width:0):


              IconButton(
              icon: Icon(Icons.close),
          onPressed: () {
            widget.email_controller.clear();
          },
        ),
        labelText: widget.text_email,
        border: OutlineInputBorder()),)
    ,
    )
    );
  }
}
