import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store_app/screens/splash_screen.dart';
import "package:flutter/src/material/text_theme.dart";

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

//theme data

      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color(0xFFF7F7F7),

        dividerColor: grey,
        hintColor: Colors.white,

        //Button theme

        buttonTheme: ButtonThemeData(
            buttonColor: Theme.of(context).primaryColor,
            splashColor: Colors.red),

        //Text theme

        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.redAccent),
            //signup heading
            headlineLarge: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(216, 0, 0, 0)),
            // trending
            button: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white70),
            // button style
            labelMedium: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color.fromARGB(211, 255, 255, 255)),
            // product name,
            subtitle1: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color.fromARGB(211, 255, 255, 255)),
            //product price
            bodyText1: TextStyle(fontSize: 20, color: Colors.white70),
            //text field
            // bodyLarge:
            //     TextStyle(fontSize: 20, color: Color.fromARGB(185, 17, 17, 17)),
            subtitle2: TextStyle(fontSize: 20, color: Colors.white38)
            //hint style
            ),
      ),

      home: const Splash_screen(),
    );
  }
}

const blue = Color(0xFF3b5998);
const grey = Color.fromARGB(148, 56, 56, 56);
const white = Color.fromARGB(211, 255, 255, 255);
const light_grey = Color.fromARGB(255, 219, 214, 214);
