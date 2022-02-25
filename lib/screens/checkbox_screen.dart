import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:alert_dialog/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  CheckboxScreen({Key? key}) : super(key: key);

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  //backbutton method
  void onPressedBack() {
    if (isChecked == true) {
      Navigator.pop(
        context,
        StringAssets.txtcheckboxselected,
      );
    } else {
      Navigator.pop(context, '');
    }
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return ColorAsset.blueColor;
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),

            ///Button Widget called
            HomeButton(
                button_text: StringAssets.txtmovetoscreen1,
                button_color: ColorAsset.purpleButton,
                onPressed: onPressedBack),
          ],
        ),
      ),
    );
  }
}
