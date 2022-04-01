import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';
import 'package:google_login_app/Widgets/login_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorAsset.skybluecolor,
          onPrimary: ColorAsset.whitecolor,
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text(AppString.txtLoginWithGoogle),
        onPressed: () {
          LoginWidget(context);
        },
      )),
    ));
  }
}
