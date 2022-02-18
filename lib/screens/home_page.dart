import 'package:flutter/material.dart';
import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:alert_dialog/Resources/string_asset.dart';
import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:alert_dialog/screens/separated_listview.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressedListview() {
    // print("listview called");
    Navigator.pushNamed(context, "/Listview");
  }

  void onPressedListBuilder() {
    Navigator.pushNamed(context, "/ListBuilder");
  }

  void onPressedSaparatedList() {
    Navigator.pushNamed(context, "/SaparatedList");
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
                  button_text: StringAssets.ListviewButton,
                  button_color: ButtonColor.cadetButton,
                  onPressed: onPressedListview,
                ),
                HomeButton(
                  button_text: StringAssets.ListviewBuilderButton,
                  button_color: ButtonColor.foloraWhiteButton,
                  onPressed: onPressedListBuilder,
                ),
                HomeButton(
                  button_text: StringAssets.ListviewSeparatedbutton,
                  button_color: ButtonColor.purpleButton,
                  onPressed: onPressedSaparatedList,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
