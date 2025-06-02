import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'continue_with_social_state.dart';

class ContinueWithSocialCubit extends Cubit<ContinueWithSocialState> {
  ContinueWithSocialCubit() : super(ContinueWithSocialInitial());

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithGoogle() async {
    emit(ContinueWithGoogleLoading());
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      // Send user data to your API
      // await _sendSocialLoginToAPI(
      //   provider: 'google',
      //   uid: userCredential.user!.uid,
      //   email: userCredential.user!.email!,
      //   name: userCredential.user!.displayName,
      // );
      print("Email: ${userCredential.user?.email}");
      emit(ContinueWithGoogleSuccess());
      return userCredential;
    } catch (e) {
      emit(ContinueWithGoogleError());
      print('Google sign-in error: $e');
      return null;
    }
  }

  final FacebookAuth _facebookAuth = FacebookAuth.instance;
  Future<UserCredential?> signInWithFacebook() async {
    try {
      final LoginResult result = await _facebookAuth.login();
      if (result.status == LoginStatus.success) {
        final OAuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);

        final UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        // Send to your API
        // await _sendSocialLoginToAPI(
        //   provider: 'facebook',
        //   uid: userCredential.user!.uid,
        //   email: userCredential.user!.email!,
        //   name: userCredential.user!.displayName,
        // );

        return userCredential;
      }
      return null;
    } catch (e) {
      print('Facebook sign-in error: $e');
      return null;
    }
  }
}
