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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBvD9wAQFM3ijFdmRILUYn-Sh6V8r3PwfM',
    appId: '1:984994452619:web:a1684ef87b246af717b08e',
    messagingSenderId: '984994452619',
    projectId: 'rankers-1c575',
    authDomain: 'rankers-1c575.firebaseapp.com',
    storageBucket: 'rankers-1c575.appspot.com',
    measurementId: 'G-VTXS245J2P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHVbTW-dSThK4DmskEB1qyhPjtNDk4ExI',
    appId: '1:984994452619:android:8d78a6f76a34455517b08e',
    messagingSenderId: '984994452619',
    projectId: 'rankers-1c575',
    storageBucket: 'rankers-1c575.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvD9wAQFM3ijFdmRILUYn-Sh6V8r3PwfM',
    appId: '1:984994452619:web:e7c92e65e43f99d317b08e',
    messagingSenderId: '984994452619',
    projectId: 'rankers-1c575',
    authDomain: 'rankers-1c575.firebaseapp.com',
    storageBucket: 'rankers-1c575.appspot.com',
    measurementId: 'G-G20YMKNE0Z',
  );
}