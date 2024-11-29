import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FireBaseHelper {
  FireBaseHelper._();

  static final FireBaseHelper fireBaseHelper = FireBaseHelper._();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User?> loginWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

      GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;

      UserCredential credential = await firebaseAuth.signInWithCredential(
        GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication?.accessToken,
          idToken: googleSignInAuthentication?.idToken,
        ),
      );
      return credential.user;
    } catch (e) {
      print("Error: ${e.toString()}");
    }
    return null;
  }

  Future<void> logOutUser() async {
    await firebaseAuth.signOut();
    await GoogleSignIn().signOut();
  }
}
