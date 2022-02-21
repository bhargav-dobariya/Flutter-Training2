import 'package:alert_dialog/widgets/buttons/privacy_button.dart';
import 'package:alert_dialog/widgets/buttons/delete_button.dart';
import 'package:alert_dialog/widgets/buttons/search_button.dart.dart';
import 'package:alert_dialog/widgets/buttons/inkwell_button.dart';
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
            DeleteButton(),
            PrivacyButton(),
            SearchButton(),
            InkWellButton(),
          ],
        ),
      ),
    ));
  }
}
