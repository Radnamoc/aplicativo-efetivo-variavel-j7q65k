import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOoOLvRICQNLNsjd9oSXMy2lHj8c0fOYY",
            authDomain: "aplicativo-efetivo-variavel.firebaseapp.com",
            projectId: "aplicativo-efetivo-variavel",
            storageBucket: "aplicativo-efetivo-variavel.firebasestorage.app",
            messagingSenderId: "62103573441",
            appId: "1:62103573441:web:5bee84b12b3a6b2ffe1540"));
  } else {
    await Firebase.initializeApp();
  }
}
