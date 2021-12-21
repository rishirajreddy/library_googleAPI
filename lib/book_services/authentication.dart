import 'package:firebase_auth/firebase_auth.dart';

Future<bool> loginIn(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The Password Provide is too weak');
    } 
    else if (e.code == 'email-already-in-use') {
      print('The account is already exists for that mail');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}
