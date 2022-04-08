import 'package:flutter/material.dart';
import 'package:google_login_app/Screens/landscape_screen.dart';
import 'package:google_login_app/Screens/portrait_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).orientation == Orientation.portrait
        ? const PortraitScreen()
        : LandscapeScreen());
  }
}
