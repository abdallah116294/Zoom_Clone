import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoom_clone/widget/snackbar.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<User?> get authChage => auth.authStateChanges();
  Future<bool> signInWithGoogle(BuildContext context) async {
    bool res = false;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      UserCredential userCredential =
          await auth.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          _firebaseFirestore.collection("users").doc(user.uid).set({
            "username": user.displayName,
            "uid": user.uid,
            "useremail": user.email,
            "profilephoto": user.photoURL,
          }).then((value) {
            showSnackBar(context, "Account created ");
          });
        }
        res = true;
      }
    } on FirebaseAuthException catch (error) {
      showSnackBar(context, error.message.toString());
      //var showSnackBar = showSnackBar();
      res = false;
      rethrow;
    }
    return res;
  }
}
