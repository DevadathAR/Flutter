// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyCxwYYah0RBg1ehPPve0nhL5OTa-TQpoGA',
    appId: '1:985920566090:web:d3782941821e3d09f547b3',
    messagingSenderId: '985920566090',
    projectId: 'video-player-lilac-infotech',
    authDomain: 'video-player-lilac-infotech.firebaseapp.com',
    storageBucket: 'video-player-lilac-infotech.appspot.com',
    measurementId: 'G-SJJ4418S0X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4EcdMo2Kz3UWxohRw65PK48Xg4EEMh70',
    appId: '1:985920566090:android:0688acf32eb356a3f547b3',
    messagingSenderId: '985920566090',
    projectId: 'video-player-lilac-infotech',
    storageBucket: 'video-player-lilac-infotech.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk4KFhKStL7UyYNAk3C56XonBC9AoUZa8',
    appId: '1:985920566090:ios:ac090d41b7e95799f547b3',
    messagingSenderId: '985920566090',
    projectId: 'video-player-lilac-infotech',
    storageBucket: 'video-player-lilac-infotech.appspot.com',
    iosBundleId: 'com.example.videoPlayerLilacinfotech',
  );
}
