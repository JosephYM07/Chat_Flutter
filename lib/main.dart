import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDIsznopHMS1UdJXcP4RKgGHtvyA4RR3Dw",
        authDomain: "chatfirebase-d1f25.firebaseapp.com",
        projectId: "chatfirebase-d1f25",
        storageBucket: "chatfirebase-d1f25.appspot.com",
        messagingSenderId: "108479024377",
        appId: "1:108479024377:web:0d1553693ca7ae48a2a628"),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
