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
        return macos;
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
    apiKey: 'AIzaSyC0GEmsoLNmKjkU_1IXaobFE0y6l40ZFCk',
    appId: '1:940542190931:web:69188eb731578ca302ada6',
    messagingSenderId: '940542190931',
    projectId: 'profile-8b7fc',
    authDomain: 'profile-8b7fc.firebaseapp.com',
    storageBucket: 'profile-8b7fc.firebasestorage.app',
    measurementId: 'G-22FFDM4QC0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuQ5gmGWTXA_VUfGLTAlk_rZk-oPB0Gac',
    appId: '1:940542190931:android:0eb3aa98b2fb4a2b02ada6',
    messagingSenderId: '940542190931',
    projectId: 'profile-8b7fc',
    storageBucket: 'profile-8b7fc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMtzL7UpvTYeYAxXprpMp30xDwp0g3YHg',
    appId: '1:940542190931:ios:41c3183164a705a802ada6',
    messagingSenderId: '940542190931',
    projectId: 'profile-8b7fc',
    storageBucket: 'profile-8b7fc.firebasestorage.app',
    iosBundleId: 'com.example.profile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMtzL7UpvTYeYAxXprpMp30xDwp0g3YHg',
    appId: '1:940542190931:ios:41c3183164a705a802ada6',
    messagingSenderId: '940542190931',
    projectId: 'profile-8b7fc',
    storageBucket: 'profile-8b7fc.firebasestorage.app',
    iosBundleId: 'com.example.profile',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC0GEmsoLNmKjkU_1IXaobFE0y6l40ZFCk',
    appId: '1:940542190931:web:4941b4c4dd2eed9102ada6',
    messagingSenderId: '940542190931',
    projectId: 'profile-8b7fc',
    authDomain: 'profile-8b7fc.firebaseapp.com',
    storageBucket: 'profile-8b7fc.firebasestorage.app',
    measurementId: 'G-X5M00VE8E3',
  );
}
