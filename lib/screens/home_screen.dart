import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/home_widget.dart';
import 'package:store_app/widgets/login_widget.dart';

class Home_screen extends StatelessWidget {
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
          return Home_widget();
        } else {
          return Login_widget();
        }
      },
    ));
  }
}
