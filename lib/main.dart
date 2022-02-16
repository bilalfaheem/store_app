import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:store_app/screens/splash_screen.dart';

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
        scaffoldBackgroundColor: Colors.white,
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
            button: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white70),
            bodyText1: TextStyle(fontSize: 20, color: Colors.white70),
            subtitle2: TextStyle(fontSize: 20, color: Colors.white38)),
      ),

      home: Splash_screen(),
    );
  }
}

const blue = Color(0xFF3b5998);
const grey = Color.fromARGB(148, 56, 56, 56);
