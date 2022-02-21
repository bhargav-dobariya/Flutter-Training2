import 'package:alert_dialog/Resources/string_asset.dart';
import 'package:alert_dialog/screens/grid_count.dart';
import 'package:flutter/material.dart';

import '../Resources/color_assets.dart';

class GridBuilder extends StatelessWidget {
  GridBuilder({Key? key}) : super(key: key);
  List<Color> colorList = [
    Colors.black,
    Colors.deepPurple,
    Colors.red,
    Colors.blueGrey,
    Colors.cyanAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: colorList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return buildItemView(colorList[index]);
            }));
  }
}

Widget buildItemView(Color color) {
  return Container(
    height: 50,
    width: 50,
    color: ColorAsset.cyanAColor,
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    child: Text(StringAssets.gridviewHelloFlutter),
  );
}
