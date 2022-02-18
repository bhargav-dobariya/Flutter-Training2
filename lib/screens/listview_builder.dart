import 'package:flutter/material.dart';
import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:alert_dialog/Resources/string_asset.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder({Key? key}) : super(key: key);

  final List<String> city = <String>['Rajkot', 'Baroda', 'Surat'];
  final List<int> colorCodes = <int>[100, 300, 600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppBarColor.greenAppBar,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(StringAssets.listviewBuilderAppbar),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: city.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.cyan[colorCodes[index]],
              child: Center(
                child: Center(child: Text('${city[index]}')),
              ),
            );
          },
        ));
  }
}
