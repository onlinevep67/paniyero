import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7RpCo4ijX814EYdXoGysOsd1fPej2NPg",
            authDomain: "panyero-v5-1u81xf.firebaseapp.com",
            projectId: "panyero-v5-1u81xf",
            storageBucket: "panyero-v5-1u81xf.firebasestorage.app",
            messagingSenderId: "115929057422",
            appId: "1:115929057422:web:4761f497e355fb8553e1df",
            measurementId: "G-ES714C7CT8"));
  } else {
    await Firebase.initializeApp();
  }
}
