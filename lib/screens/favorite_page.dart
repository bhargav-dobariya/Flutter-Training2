import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringAssets.txtfavoritepage),
        centerTitle: true,
        backgroundColor: ColorAsset.blueColor,
      ),
      body: Center(
          child: Text(StringAssets.txtfavoritepage,
              style: TextStyle(fontSize: 30))),
    );
  }
}
