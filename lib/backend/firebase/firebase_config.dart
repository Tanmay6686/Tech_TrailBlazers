import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAWSX3BHvyLjouM6zjxltO6UHmfPdy4050",
            authDomain: "hackmania-31839.firebaseapp.com",
            projectId: "hackmania-31839",
            storageBucket: "hackmania-31839.appspot.com",
            messagingSenderId: "1057964780223",
            appId: "1:1057964780223:web:56761df1dd16dc8004340a"));
  } else {
    await Firebase.initializeApp();
  }
}
