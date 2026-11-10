import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhyrWeiL2dQxa8m3F9QxGRgoy6gttEP5E",
            authDomain: "dulce-pedido.firebaseapp.com",
            projectId: "dulce-pedido",
            storageBucket: "dulce-pedido.firebasestorage.app",
            messagingSenderId: "821877949934",
            appId: "1:821877949934:web:1a55b9387ced67465afaff"));
  } else {
    await Firebase.initializeApp();
  }
}
