import 'package:flutter/material.dart';
import 'package:store_app/methods/email_sign_in.dart';

class Signup_widget extends StatefulWidget {
  const Signup_widget({Key? key}) : super(key: key);

  @override
  _Signup_widgetState createState() => _Signup_widgetState();
}

TextEditingController new_email_controller = TextEditingController();
TextEditingController new_password_controller = TextEditingController();

class _Signup_widgetState extends State<Signup_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),

          Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.02,
                MediaQuery.of(context).size.height * 0.05,
                MediaQuery.of(context).size.width * 0.3,
                MediaQuery.of(context).size.height * 0.05),
            child: Text(
              "Create An Account",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),

//New Email

          Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.height * 0.05,
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.height * 0.00),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).dividerColor),

            // ignore: prefer_const_constructors
            child: TextFormField(
              controller: new_email_controller,
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
            ),
          ),

//New Password

          Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.height * 0.05,
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.height * 0.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).dividerColor),

            // ignore: prefer_const_constructors
            child: TextField(
              controller: new_password_controller,
              style: Theme.of(context).textTheme.bodyText1,
              cursorColor: Theme.of(context).primaryColor,
              cursorWidth: 3,
              decoration: InputDecoration(
                focusColor: Theme.of(context).primaryColor,
                // hoverColor: Colors.black,
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: Theme.of(context).textTheme.subtitle2,
                contentPadding: EdgeInsets.fromLTRB(25, 1, 3, 1),
              ),
            ),
          ),

//SignUp Button

          Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.1,
                  MediaQuery.of(context).size.height * 0.05,
                  MediaQuery.of(context).size.width * 0.1,
                  MediaQuery.of(context).size.height * 0.00),
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor),
              child: TextButton(
                  onPressed: () {
                    Email_sign_in().sign_Up_Firebase(context);
                    // new_email_controller.clear();
                    // new_password_controller.clear();
                  },
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.button,
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ))))),
        ],
      ),
    );
  }
}
