import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:store_app/widgets/home_widget.dart';
import 'package:store_app/widgets/login_widget.dart';
import 'package:store_app/widgets/signup_widget.dart';

bool log_in = false;

class Email_sign_in {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future sign_Up_Firebase(context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: new_email_controller.text,
              password: new_password_controller.text);
      //to keep sign in
      log_in = true;

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Home_widget()));
      print(log_in);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future log_In_Firebase(context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: Email_controller.text, password: Password_controller.text);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Home_widget()));
// to keep sign in
      log_in = true;

      print(log_in);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future email_sign_out() async {
    await FirebaseAuth.instance.signOut();

    log_in = false;
  }
}
