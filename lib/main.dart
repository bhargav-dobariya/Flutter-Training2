// import 'package:alert_dialog/screens/checkbox_screen.dart';
import 'package:alert_dialog/screens/home_screen.dart';
import 'package:alert_dialog/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
        routes: {
          "/login": (context) => const LoginScreen(),
          "/home": (context) => HomePage(),
        });
  }
}
