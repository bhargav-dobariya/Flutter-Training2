import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class StarredPage extends StatelessWidget {
  const StarredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringAssets.txtstarred),
        centerTitle: true,
        backgroundColor: ColorAsset.blueColor,
      ),
    );
  }
}
