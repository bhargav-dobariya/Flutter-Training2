import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringAssets.txthomepage),
        centerTitle: true,
        backgroundColor: ColorAsset.blueColor,
      ),
      body: Center(
          child: Text(StringAssets.txthomepage,
              style: const TextStyle(fontSize: 30))),
    );
  }
}
