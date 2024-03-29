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
    apiKey: 'AIzaSyD2PdKMjhLDsQZXwF-Qnp9tuTjfVqwwv9I',
    appId: '1:637905690799:web:17b30bbb335e097c6fb45a',
    messagingSenderId: '637905690799',
    projectId: 'authtutorial-de80c',
    authDomain: 'authtutorial-de80c.firebaseapp.com',
    storageBucket: 'authtutorial-de80c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8d-FWDmv6E0QbtoRF6ih_ilZc-1Vj08M',
    appId: '1:637905690799:android:e8bc54bf75db03016fb45a',
    messagingSenderId: '637905690799',
    projectId: 'authtutorial-de80c',
    storageBucket: 'authtutorial-de80c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADAlJVsAlvX4yekAxgd84NuU1-ALF0Lm0',
    appId: '1:637905690799:ios:88f47a6f5de9318a6fb45a',
    messagingSenderId: '637905690799',
    projectId: 'authtutorial-de80c',
    storageBucket: 'authtutorial-de80c.appspot.com',
    iosClientId: '637905690799-9shnm980f8q6vjk9rbq6eih4tfp1l7jg.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADAlJVsAlvX4yekAxgd84NuU1-ALF0Lm0',
    appId: '1:637905690799:ios:88f47a6f5de9318a6fb45a',
    messagingSenderId: '637905690799',
    projectId: 'authtutorial-de80c',
    storageBucket: 'authtutorial-de80c.appspot.com',
    iosClientId: '637905690799-9shnm980f8q6vjk9rbq6eih4tfp1l7jg.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernlogintute',
  );
}