import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class GridViewExtend extends StatefulWidget {
  GridViewExtend({Key? key}) : super(key: key);

  @override
  State<GridViewExtend> createState() => _GridViewExtendState();
}

class _GridViewExtendState extends State<GridViewExtend> {
  List<int> Shade = [100, 200, 300, 400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 180,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.yellow[Shade[0]],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.yellow[Shade[1]],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.yellow[Shade[2]],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.yellow[Shade[3]],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.cyan[Shade[3]],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(StringAssets.gridviewHelloFlutter),
              color: Colors.orange[Shade[2]],
            ),
          ],
        ),
      ),
    );
  }
}
