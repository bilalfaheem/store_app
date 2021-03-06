import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

// Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }

class signInWithGoogle {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

//Google Sign In Method

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }
  }

//Google Log Out Method

  Future googleLogout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
