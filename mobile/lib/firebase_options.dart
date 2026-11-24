import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBnZQwPE-SvV3i3_qU3oGA3Jo5o8PbJ3Do',
    appId: '1:990796794350:web:c7140127350de9f8da66ff',
    messagingSenderId: '990796794350',
    projectId: 'project-11ec6340-9952-4350-aed',
    authDomain: 'project-11ec6340-9952-4350-aed.firebaseapp.com',
    storageBucket: 'project-11ec6340-9952-4350-aed.firebasestorage.app',
    measurementId: 'G-VHCWLY6E8L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgiJ3DEL6ANuZ1oVTeurh68QI3yftsmCo',
    appId: '1:990796794350:android:941945b5c4bbfb12da66ff',
    messagingSenderId: '990796794350',
    projectId: 'project-11ec6340-9952-4350-aed',
    storageBucket: 'project-11ec6340-9952-4350-aed.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnZQwPE-SvV3i3_qU3oGA3Jo5o8PbJ3Do',
    appId: '1:990796794350:web:c7140127350de9f8da66ff',
    messagingSenderId: '990796794350',
    projectId: 'project-11ec6340-9952-4350-aed',
    storageBucket: 'project-11ec6340-9952-4350-aed.firebasestorage.app',
    iosBundleId: 'com.ntemoconsulting.NtemoFin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnZQwPE-SvV3i3_qU3oGA3Jo5o8PbJ3Do',
    appId: '1:990796794350:web:c7140127350de9f8da66ff',
    messagingSenderId: '990796794350',
    projectId: 'project-11ec6340-9952-4350-aed',
    storageBucket: 'project-11ec6340-9952-4350-aed.firebasestorage.app',
    iosBundleId: 'com.ntemoconsulting.NtemoFin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBnZQwPE-SvV3i3_qU3oGA3Jo5o8PbJ3Do',
    appId: '1:990796794350:web:c7140127350de9f8da66ff',
    messagingSenderId: '990796794350',
    projectId: 'project-11ec6340-9952-4350-aed',
    storageBucket: 'project-11ec6340-9952-4350-aed.firebasestorage.app',
  );
}
