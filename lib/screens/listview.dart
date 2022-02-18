import 'package:flutter/material.dart';
import 'package:alert_dialog/Resources/color_assets.dart';
import 'package:alert_dialog/Resources/string_asset.dart';

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
        title: Text(StringAssets.listviewAppBar),
        centerTitle: true,
      ),
      body: ListView(children: [
        Card(
          child: ListTile(
            leading: const Icon(Icons.account_balance_rounded),
            title: Text(StringAssets.listviewHelloFlutter),
          ),
        ),
        const Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text("Hello Flutter"),
          ),
        ),
        const Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text("Hello Flutter"),
          ),
        ),
      ]),
    );
  }
}
