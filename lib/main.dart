import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyBNTrtG4CQWw_Az8EdC-vAcwn492QPP27w",
  authDomain: "flutter-auth-ba453.firebaseapp.com",
  projectId: "flutter-auth-ba453",
  storageBucket: "flutter-auth-ba453.appspot.com",
  messagingSenderId: "524143688322",
  appId: "1:524143688322:web:410c74f3f69f810687929b"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Интернет-магазин тортов',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}

