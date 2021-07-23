import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future<UserCredential> signInWithGoogleWeb() async {
  // Create a new provider
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

  // FirebaseAuth.instance.authStateChanges().listen((User? user) {
  //   if (user == null) {
  //     print('User is currently signed out!');
  //   } else {
  //     print('User is signed in!');
  //   }
  // });

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);

  // Or use signInWithRedirect
  // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
}
