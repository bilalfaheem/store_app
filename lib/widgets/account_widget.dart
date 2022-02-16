import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:store_app/methods/email_sign_in.dart';
import 'package:store_app/methods/google_sign_in.dart';

// class Account_widget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser!;

//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 200,
//           ),
//           // Text("Profile"),
//           // CircleAvatar(
//           //   radius: 50,
//           //   backgroundImage: NetworkImage(user.photoURL!),
//           // ),
//           // SizedBox(
//           //   height: 8,
//           // ),
//           // Text("Name:  " + user.displayName!),
//           // SizedBox(
//           //   height: 8,
//           // ),
//           Text("Email: " + user.email!),
//           TextButton(
//               onPressed: () {
//                 signInWithGoogle().googleLogout();
//                 Email_sign_in().email_sign_out();
//               },
//               child: Text("Log Out"))
//         ],
//       ),
//     );
//   }
// }
class Account_widget extends StatefulWidget {
  const Account_widget({Key? key}) : super(key: key);

  @override
  _Account_widgetState createState() => _Account_widgetState();
}

class _Account_widgetState extends State<Account_widget> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text("Email: " + user.email!),
          TextButton(
              onPressed: () {
                signInWithGoogle().googleLogout();
                Email_sign_in().email_sign_out();
                setState(() {
                  FirebaseAuth.instance.currentUser;
                });
              },
              child: Text("Log Out"))
        ],
      ),
    );
  }
}
