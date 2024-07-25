import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBPX0snJ4rfnTjPIZGaKaxSaLRrj6Uz40g",
            authDomain: "proyecto-5vda88.firebaseapp.com",
            projectId: "proyecto-5vda88",
            storageBucket: "proyecto-5vda88.appspot.com",
            messagingSenderId: "782230411219",
            appId: "1:782230411219:web:20800de199b9b23e08c126"));
  } else {
    await Firebase.initializeApp();
  }
}
