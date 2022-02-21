import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:flutter/material.dart';

class GridCount extends StatefulWidget {
  GridCount({Key? key}) : super(key: key);

  @override
  State<GridCount> createState() => _GridCountState();
}

class _GridCountState extends State<GridCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
        buildItem(),
      ],
    ));
  }
}

Widget buildItem() {
  return Container(
    height: 50,
    width: 50,
    color: ColorAsset.cyanAColor,
    padding: EdgeInsets.all(10),
    alignment: Alignment.center,
    child: const Text('Hello Flutter'),
  );
}
