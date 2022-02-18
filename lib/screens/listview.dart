import 'package:flutter/material.dart';
import 'package:listview_task/Resources/color_assets.dart';
import 'package:listview_task/Resources/string_asset.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.cyanAppBar,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(StringAssets.ListviewAppBar),
        centerTitle: true,
      ),
      body: ListView(children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text(StringAssets.ListviewHelloFlutter),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text("Hello Flutter"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text("Hello Flutter"),
          ),
        ),
      ]),
    );
  }
}
