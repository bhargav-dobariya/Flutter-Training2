import 'package:alert_dialog/screens/user_data.dart';
import 'package:flutter/material.dart';
// import 'package:convert/convert.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserData()));
              },
              child: Text('Click Me')),
        ),
      ),
    );
  }
}
