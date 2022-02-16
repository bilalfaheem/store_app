import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/methods/email_sign_in.dart';
import 'package:store_app/widgets/home_widget.dart';
import 'package:store_app/widgets/login_widget.dart';
import 'package:store_app/widgets/signup_widget.dart';

class Home_screen extends StatelessWidget {
  // FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Something has gone wrong!"));
        } else if (snapshot.hasData) {
          // FirebaseAuth.instance.currentUser != null) {
          return Home_widget();
        }
        // else if (sign_up==){}
        else {
          return Login_widget();
        }
      },
    ));
  }
}
