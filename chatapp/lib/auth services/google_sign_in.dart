import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> SignInWithGoogle() async {
  //triger the communication
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

  //obtain the credential from google

  final GoogleSignInAuthentication? gAuth = await gUser?.authentication;
  //create new credintials
  final credential = GoogleAuthProvider.credential(
    accessToken: gAuth?.accessToken,
    idToken: gAuth?.idToken,
  );
  final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  //now retrive the data
  await firestore.collection("users").doc(userCredential.user!.uid).set({
    'uid': userCredential.user!.uid,
    'name': userCredential.user!.displayName
  }, SetOptions(merge: true));
  //sign in with firebase

  return await FirebaseAuth.instance.signInWithCredential(credential);
}
