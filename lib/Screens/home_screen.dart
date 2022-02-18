import 'package:alert_dialog/widgets/buttons/custom_button2.dart';
import 'package:alert_dialog/widgets/buttons/custom_button.dart';
import 'package:alert_dialog/widgets/buttons/custom_button3.dart';
import 'package:alert_dialog/widgets/buttons/custom_button4.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool user1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(),
            CustomButton2(),
            CustomButton3(),
            CustomButton4(),
          ],
        ),
      ),
    ));
  }
}
