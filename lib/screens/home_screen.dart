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
  void onPressedScreen2() async {
    await (Navigator.pushNamed(context, "/checkboxScreen"));
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
                '${widget.text}',
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
