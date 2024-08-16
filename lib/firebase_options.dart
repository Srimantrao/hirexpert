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
    apiKey: 'AIzaSyCXCPHFUT_1-99ygsKvd3VXyu9uU91IDvg',
    appId: '1:435726694932:web:fe8e283cd3e26528410501',
    messagingSenderId: '435726694932',
    projectId: 'hirexpert-29455',
    authDomain: 'hirexpert-29455.firebaseapp.com',
    storageBucket: 'hirexpert-29455.appspot.com',
    measurementId: 'G-QV4G9MCREG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI5jy4sFeC62I98et4Y03goBr0JOFtNEM',
    appId: '1:435726694932:android:cdf2eba093c19c1a410501',
    messagingSenderId: '435726694932',
    projectId: 'hirexpert-29455',
    storageBucket: 'hirexpert-29455.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_U2U8JIZlaCthHh017SPONqLZhJpGl5k',
    appId: '1:435726694932:ios:bea68d2cf6fa55d0410501',
    messagingSenderId: '435726694932',
    projectId: 'hirexpert-29455',
    storageBucket: 'hirexpert-29455.appspot.com',
    iosBundleId: 'com.example.hirexpert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_U2U8JIZlaCthHh017SPONqLZhJpGl5k',
    appId: '1:435726694932:ios:7e2f495edde32823410501',
    messagingSenderId: '435726694932',
    projectId: 'hirexpert-29455',
    storageBucket: 'hirexpert-29455.appspot.com',
    iosBundleId: 'com.example.hirexpert.RunnerTests',
  );
}