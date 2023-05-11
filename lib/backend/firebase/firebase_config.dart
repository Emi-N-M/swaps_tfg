import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDM95NY40rg45nfTCOFZJWqKgZLoOzft-4",
            authDomain: "swaps-fcc15.firebaseapp.com",
            projectId: "swaps-fcc15",
            storageBucket: "swaps-fcc15.appspot.com",
            messagingSenderId: "126851218513",
            appId: "1:126851218513:web:62d23431f10bd17fbbcc70",
            measurementId: "G-1BDD1T7HKZ"));
  } else {
    await Firebase.initializeApp();
  }
}
