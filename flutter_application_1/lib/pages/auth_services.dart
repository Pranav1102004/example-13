import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  signInWithGoogle() async {
    //begin the interaction with the google
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //obtain the auth detail request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    //create credential
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    //finally sign in
    return FirebaseAuth.instance.signInWithCredential(credential);
  }
}
