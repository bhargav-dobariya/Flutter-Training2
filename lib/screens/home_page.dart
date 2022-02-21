import 'package:flutter/material.dart';
import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:alert_dialog/Resources/string_asset.dart';
import 'package:alert_dialog/buttons/home_screen_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressedGridExtend() {
    // print("listview called");
    Navigator.pushNamed(context, "/GridViewExtend");
  }

  void onPressedGridBuilder() {
    Navigator.pushNamed(context, "/GridBuilder");
  }

  void onPressedGridCount() {
    Navigator.pushNamed(context, "/GridCount");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeButton(
                  button_text: StringAssets.gridviewCountButton,
                  button_color: ButtonColor.cadetButton,
                  onPressed: onPressedGridCount,
                ),
                HomeButton(
                  button_text: StringAssets.gridviewBuilderButton,
                  button_color: ButtonColor.foloraWhiteButton,
                  onPressed: onPressedGridBuilder,
                ),
                HomeButton(
                  button_text: StringAssets.gridviewExtendbutton,
                  button_color: ButtonColor.purpleButton,
                  onPressed: onPressedGridExtend,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
