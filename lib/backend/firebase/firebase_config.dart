import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDbnNZR9q6YMFAMvco3f8_H6wI7iVvJ75c",
            authDomain: "dobbyxpress.firebaseapp.com",
            projectId: "dobbyxpress",
            storageBucket: "dobbyxpress.appspot.com",
            messagingSenderId: "741059753100",
            appId: "1:741059753100:web:68b487426ecff59fc4f7a9"));
  } else {
    await Firebase.initializeApp();
  }
}
