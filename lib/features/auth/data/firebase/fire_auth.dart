
import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireAuth {

  void userSignUp(String emailAddress, String password) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar('The account already exists for that email.');
      }
    } catch (e) {
      showSnackBar('There is an error creating the account');
    }
  }

  void userSignIn(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackBar('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnackBar('Wrong password provided for that user.');
      }
    }catch (e) {
      showSnackBar('There is an error login account');
    }
  }

  void userSignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  

  void showSnackBar(String text) {
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 3),
      ),
    );

  }

}