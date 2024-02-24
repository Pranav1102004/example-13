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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDiBnreaQURGx5I69thyCUpgzYJ0Sg_mOI',
    appId: '1:353485125932:web:e30ecfd177f70fd2975489',
    messagingSenderId: '353485125932',
    projectId: 'authentication-991a3',
    authDomain: 'authentication-991a3.firebaseapp.com',
    storageBucket: 'authentication-991a3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3_uDbLENbkvSYSSD6cYLL-OLmicDLjJM',
    appId: '1:353485125932:android:79946a43705ee7d9975489',
    messagingSenderId: '353485125932',
    projectId: 'authentication-991a3',
    storageBucket: 'authentication-991a3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdPFYIDbYN7WwC2XJO-_S9AkbYGyi_9DA',
    appId: '1:353485125932:ios:51852976e7437e89975489',
    messagingSenderId: '353485125932',
    projectId: 'authentication-991a3',
    storageBucket: 'authentication-991a3.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdPFYIDbYN7WwC2XJO-_S9AkbYGyi_9DA',
    appId: '1:353485125932:ios:e311b579962157dd975489',
    messagingSenderId: '353485125932',
    projectId: 'authentication-991a3',
    storageBucket: 'authentication-991a3.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
