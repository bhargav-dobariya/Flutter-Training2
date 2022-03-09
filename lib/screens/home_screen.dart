import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Intialialize Firebase App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringAssets.txtwelcometohomepage),
        centerTitle: true,
      ),
      body: Center(child: Text(StringAssets.txtyouaresuccessfullyloggedin)),
    );
  }
}
