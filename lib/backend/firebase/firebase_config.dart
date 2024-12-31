import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD7RpCo4ijX814EYdXoGysOsd1fPej2NPg",
            authDomain: "panyero-v5-1u81xf.firebaseapp.com",
            projectId: "panyero-v5-1u81xf",
            storageBucket: "panyero-v5-1u81xf.firebasestorage.app",
            messagingSenderId: "115929057422",
            appId: "1:115929057422:web:4395fcbe3f2a8b0453e1df",
            measurementId: "G-176JFP0JF9"));
  } else {
    await Firebase.initializeApp();
  }
}
