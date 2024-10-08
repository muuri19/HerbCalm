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
    apiKey: 'AIzaSyALDJNVYmnNpIEpeB5s6GByhqScP9QRRU0',
    appId: '1:905674764363:web:f09b3ac2e64a579e815dce',
    messagingSenderId: '905674764363',
    projectId: 'herbcalm-9227b',
    authDomain: 'herbcalm-9227b.firebaseapp.com',
    databaseURL: 'https://herbcalm-9227b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'herbcalm-9227b.appspot.com',
    measurementId: 'G-E2NPC7Q4ZG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAm-n4PKlqTZJ2gH0qaJ42sWZ6VE7H6e0',
    appId: '1:905674764363:android:8b10b739ac3a1b45815dce',
    messagingSenderId: '905674764363',
    projectId: 'herbcalm-9227b',
    databaseURL: 'https://herbcalm-9227b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'herbcalm-9227b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRTueaLVrCqbgM1qnPgpbyYdcWeOm02NQ',
    appId: '1:905674764363:ios:7dca70cb9e654690815dce',
    messagingSenderId: '905674764363',
    projectId: 'herbcalm-9227b',
    databaseURL: 'https://herbcalm-9227b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'herbcalm-9227b.appspot.com',
    iosClientId: '905674764363-sie7d49s28qeuglch395peketb2bimrb.apps.googleusercontent.com',
    iosBundleId: 'com.example.herbcalm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRTueaLVrCqbgM1qnPgpbyYdcWeOm02NQ',
    appId: '1:905674764363:ios:b97b6e8d0beb4104815dce',
    messagingSenderId: '905674764363',
    projectId: 'herbcalm-9227b',
    databaseURL: 'https://herbcalm-9227b-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'herbcalm-9227b.appspot.com',
    iosClientId: '905674764363-i3k4hub2k05u2l69ttqljahb7dmb30nd.apps.googleusercontent.com',
    iosBundleId: 'com.example.herbcalm.RunnerTests',
  );
}
