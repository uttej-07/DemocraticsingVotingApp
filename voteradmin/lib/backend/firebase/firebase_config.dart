import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCXNxt1HlX6dNIFr_f15g9gLvsoqWQkeB0",
            authDomain: "voterapp-dad4e.firebaseapp.com",
            projectId: "voterapp-dad4e",
            storageBucket: "voterapp-dad4e.appspot.com",
            messagingSenderId: "397566160786",
            appId: "1:397566160786:web:a67fe15ec4dbc8faf69b4b",
            measurementId: "G-WZS2T6TM3S"));
  } else {
    await Firebase.initializeApp();
  }
}
