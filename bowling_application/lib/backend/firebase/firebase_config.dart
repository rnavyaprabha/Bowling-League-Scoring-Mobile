import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD8w2hM1Oh6Z4gHq7jTKtKTqYvePE6H5ko",
            authDomain: "bowlr-6c004.firebaseapp.com",
            projectId: "bowlr-6c004",
            storageBucket: "bowlr-6c004.appspot.com",
            messagingSenderId: "794903138882",
            appId: "1:794903138882:web:b4c4236b921c6f775613db",
            measurementId: "G-W5KXXZ68EJ"));
  } else {
    await Firebase.initializeApp();
  }
}
