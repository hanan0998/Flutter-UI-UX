// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpDZn14z1vU92h_EeVhfuMh6JKyGsdSAI',
    appId: '1:1056091409025:android:095967c2ea0d8239169b80',
    messagingSenderId: '1056091409025',
    projectId: 'flutter-login-app-d2ca5',
    storageBucket: 'flutter-login-app-d2ca5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6jEuZepgTU0jyrrLe1Xs8NaweqnXVpOY',
    appId: '1:1056091409025:ios:230b9231a05c4cb4169b80',
    messagingSenderId: '1056091409025',
    projectId: 'flutter-login-app-d2ca5',
    storageBucket: 'flutter-login-app-d2ca5.appspot.com',
    androidClientId: '1056091409025-0vsn6lt5kddvtqdt7j41bfm8fn6g603i.apps.googleusercontent.com',
    iosClientId: '1056091409025-s6nlqmv5lfln5n4vd2ksamchivm30qa7.apps.googleusercontent.com',
    iosBundleId: 'com.example.appLogin',
  );
}
