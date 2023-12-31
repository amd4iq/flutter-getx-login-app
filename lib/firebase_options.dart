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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBx03wFaKwoxdY8G2NlLZyieQRAkS8tQlI',
    appId: '1:107283899256:web:134d44ef745db56edb1e8d',
    messagingSenderId: '107283899256',
    projectId: 'getx-flutter-project',
    authDomain: 'getx-flutter-project.firebaseapp.com',
    storageBucket: 'getx-flutter-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVPh7RcLZ8eKVPdMPDHgj6j0ePboq9Q1Y',
    appId: '1:107283899256:android:9c0f1516275d0d48db1e8d',
    messagingSenderId: '107283899256',
    projectId: 'getx-flutter-project',
    storageBucket: 'getx-flutter-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAH8HaYgd7NLv5oLfagaRpDMNqEFBXsM9E',
    appId: '1:107283899256:ios:8fb0e76f56cfa11ddb1e8d',
    messagingSenderId: '107283899256',
    projectId: 'getx-flutter-project',
    storageBucket: 'getx-flutter-project.appspot.com',
    iosBundleId: 'com.ahmed.getxEProject',
  );
}
