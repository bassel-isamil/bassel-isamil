import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  Name(this.text_email,this.name_controller);

  String text_email;
  final name_controller;

  @override
  _Custom_email_fieldState createState() => _Custom_email_fieldState();
}

class _Custom_email_fieldState extends State<Name> {

  @override
  void initState() {
    super.initState();
    widget.name_controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: widget.name_controller,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty)
                return ("please enter your name");
            },
            decoration: InputDecoration(

//            suffixIcon: Icon(Icons.alternate_email,color: Colors.blue,), //make icon in the end of text field
//            prefixIcon: Icon(Icons.alternate_email,color: Colors.blue,), //make icon in the start of text field

                suffixIcon: widget.name_controller.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    :

//                email_controler.text.isEmpty           using to hidden close icon from text field
//                ? Container(width:0):

                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          widget.name_controller.clear();
                        },
                      ),
                labelText: widget.text_email,
                border: OutlineInputBorder()),
          ),
        ));
  }
}
