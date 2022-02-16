// import 'package:flutter/material.dart';
// import 'package:store_app/main.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:store_app/methods/google_sign_in.dart';

// class Login_screen extends StatefulWidget {
//   const Login_screen({Key? key}) : super(key: key);

//   @override
//   _Login_screenState createState() => _Login_screenState();
// }

// class _Login_screenState extends State<Login_screen> {
// //controller

//   TextEditingController Email_controller = TextEditingController();
//   TextEditingController Password_controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Theme.of(context).primaryColorDark,
//         body: ListView(shrinkWrap: true, children: [
//           Column(
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height * 0.14),

// //logo

//               Center(
//                   child: Image.asset(
//                 "assets/logo.png",
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 width: MediaQuery.of(context).size.width * 0.2,
//                 color: Theme.of(context).primaryColor,
//               )),

// //Email

//               Container(
//                 margin: EdgeInsets.fromLTRB(
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.05,
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.00),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: Theme.of(context).dividerColor),

//                 // ignore: prefer_const_constructors
//                 child: TextField(
//                   controller: Email_controller,
//                   style: Theme.of(context).textTheme.bodyText1,
//                   cursorColor: Theme.of(context).primaryColor,
//                   cursorWidth: 3,
//                   decoration: InputDecoration(
//                     focusColor: Theme.of(context).primaryColor,
//                     // hoverColor: Colors.black,
//                     border: InputBorder.none,
//                     hintText: "Email",
//                     hintStyle: Theme.of(context).textTheme.subtitle2,
//                     contentPadding: EdgeInsets.fromLTRB(25, 1, 3, 1),
//                   ),
//                 ),
//               ),

// //Password

//               Container(
//                 margin: EdgeInsets.fromLTRB(
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.05,
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.05),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: Theme.of(context).dividerColor),

//                 // ignore: prefer_const_constructors
//                 child: TextField(
//                   controller: Password_controller,
//                   style: Theme.of(context).textTheme.bodyText1,
//                   cursorColor: Theme.of(context).primaryColor,
//                   cursorWidth: 3,
//                   decoration: InputDecoration(
//                     focusColor: Theme.of(context).primaryColor,
//                     // hoverColor: Colors.black,
//                     border: InputBorder.none,
//                     hintText: "Password",
//                     hintStyle: Theme.of(context).textTheme.subtitle2,
//                     contentPadding: EdgeInsets.fromLTRB(25, 1, 3, 1),
//                   ),
//                 ),
//               ),

// //Login Button

//               Container(
//                   margin: EdgeInsets.fromLTRB(
//                       MediaQuery.of(context).size.width * 0.1,
//                       MediaQuery.of(context).size.height * 0.05,
//                       MediaQuery.of(context).size.width * 0.1,
//                       MediaQuery.of(context).size.height * 0.00),
//                   width: MediaQuery.of(context).size.width * 1,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Theme.of(context).primaryColor),
//                   child: TextButton(
//                       onPressed: () {
//                         Email_controller.clear();
//                         Password_controller.clear();
//                       },
//                       child: Text(
//                         "Login",
//                         style: Theme.of(context).textTheme.button,
//                       ),
//                       style: ButtonStyle(
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ))))),

//               // Facebook login

//               Container(
//                 margin: EdgeInsets.fromLTRB(
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.05,
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.00),
//                 width: MediaQuery.of(context).size.width * 1,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25), color: blue),
//                 child: Expanded(
//                   child: TextButton(
//                     onPressed: () {
//                       Email_controller.clear();
//                       Password_controller.clear();
//                     },
//                     child: Text("Continue with Facebook"),
//                     style: TextButton.styleFrom(
//                         primary: Colors.white,
//                         textStyle: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                 ),
//               ),

// //Google login

//               Container(
//                 margin: EdgeInsets.fromLTRB(
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.05,
//                     MediaQuery.of(context).size.width * 0.1,
//                     MediaQuery.of(context).size.height * 0.00),
//                 width: MediaQuery.of(context).size.width * 1,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25), color: grey),
//                 child: Expanded(
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       signInWithGoogle().googleLogin();
//                     },
//                     icon: FaIcon(FontAwesomeIcons.google),
//                     label: Text("Continue with Google"),
//                     style: ElevatedButton.styleFrom(
//                         primary: Colors.white,
//                         textStyle: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                 ),
//               )
//             ],
//           )
//         ]));
//   }
// }
