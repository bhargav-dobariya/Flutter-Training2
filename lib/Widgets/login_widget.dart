import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_login_app/Screens/login_confirm.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
Future<void> LoginWidget(BuildContext context) async {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    UserCredential result = await auth.signInWithCredential(authCredential);
    User? user = result.user;

    if (result != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInConfirm()));
    }
  }
}
