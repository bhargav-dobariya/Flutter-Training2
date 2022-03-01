import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class DraftMailPage extends StatelessWidget {
  const DraftMailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringAssets.txtdraftmail),
        centerTitle: true,
        backgroundColor: ColorAsset.blueColor,
      ),
    );
  }
}
