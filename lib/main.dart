import 'package:flutter/material.dart';
import 'package:note_app/auth/login.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/home/addnote.dart';
import 'home/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent
        )
        
      ),
      routes: {
        "Login" :(context) => const LoginPage(),
        "SignUp" :(context) => const SignUp(),
        "Home" :(context) => const HomePage(),
        "Note" :(context) => const AddNote(),
      },
    );
  }
}
