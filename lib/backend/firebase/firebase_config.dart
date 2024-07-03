import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD1NvXqJWBHPOJklTujKBPmtxhsBK19eTw",
            authDomain: "cometlinks.firebaseapp.com",
            projectId: "cometlinks",
            storageBucket: "cometlinks.appspot.com",
            messagingSenderId: "897412843394",
            appId: "1:897412843394:web:6129363b06bd53becbb19b",
            measurementId: "G-HFTB57GJDL"));
  } else {
    await Firebase.initializeApp();
  }
}
