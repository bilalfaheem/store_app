import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Account_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text("Profile"),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          SizedBox(
            height: 8,
          ),
          Text("Name:  " + user.displayName!),
          SizedBox(
            height: 8,
          ),
          Text("Email: " + user.email!)
        ],
      ),
    );
  }
}
