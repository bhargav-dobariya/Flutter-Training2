import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  var text;

  HomeScreen({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? data = '';
  void onPressedScreen2() async {
    Navigator.pushNamed(context, "/checkboxScreen").then((value) {
      print(value);
      data = value as String?;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$data',
                style: TextStyle(fontSize: 26),
              ),

              ///button widget called
              HomeButton(
                button_text: StringAssets.txtscreen2,
                button_color: ColorAsset.foloraWhiteButton,
                onPressed: onPressedScreen2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
