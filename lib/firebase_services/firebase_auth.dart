import 'dart:async';

import '../utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  void signUp(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Utils.toastMessage('Account registered successully');
    } on FirebaseAuthException catch (e) {
      Utils.toastMessage(e.toString());
    }
  }
}
