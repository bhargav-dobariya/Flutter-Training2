import 'package:flutter/material.dart';
import 'package:google_login_app/Screens/home_screen.dart';
import 'package:google_login_app/Screens/landscape_screen.dart';
import 'package:google_login_app/Screens/portrait_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
