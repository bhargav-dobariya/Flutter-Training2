import 'package:flutter/material.dart';
import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:alert_dialog/Resources/string_asset.dart';

class SaparatedListView extends StatelessWidget {
  SaparatedListView({Key? key}) : super(key: key);

  final List<String> city = <String>['Rajkot', 'Baroda', 'Surat'];
  final List<int> colorCodes = <int>[100, 300, 600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppBarColor.blueAppBar,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(StringAssets.listviewSeparatedAppbar),
          centerTitle: true,
        ),
        body: ListView.separated(
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
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }
}
