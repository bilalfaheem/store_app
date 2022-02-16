import 'package:flutter/material.dart';

class Sign_up_form_widget extends StatefulWidget {
  const Sign_up_form_widget({Key? key}) : super(key: key);

  @override
  _Sign_up_form_widgetState createState() => _Sign_up_form_widgetState();
}

class _Sign_up_form_widgetState extends State<Sign_up_form_widget> {
//Global Key

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: TextFormField(
          style: Theme.of(context).textTheme.bodyText1,
          cursorColor: Theme.of(context).primaryColor,
          cursorWidth: 3,
          decoration: InputDecoration(
            focusColor: Theme.of(context).primaryColor,
            // hoverColor: Colors.black,
            border: InputBorder.none,
            hintText: "Email",
            hintStyle: Theme.of(context).textTheme.subtitle2,
            contentPadding: EdgeInsets.fromLTRB(25, 1, 3, 1),
          ),
        ));
  }
}
