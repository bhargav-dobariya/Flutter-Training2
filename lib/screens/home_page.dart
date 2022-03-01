import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    Center(
        child: Text(StringAssets.txthomepage, style: TextStyle(fontSize: 30))),
    Center(
        child:
            Text(StringAssets.txtfavoritepage, style: TextStyle(fontSize: 30))),
    Center(
        child:
            Text(StringAssets.txtprofilepage, style: TextStyle(fontSize: 30))),
    Center(
        child: Text(StringAssets.txteventPage, style: TextStyle(fontSize: 30))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar'),
        centerTitle: true,
        backgroundColor: ColorAsset.blueColor,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorAsset.blackcolor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: StringAssets.txthome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: StringAssets.txtfavoritepage,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: StringAssets.txtprofile,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: StringAssets.txtevent,
          ),
        ],
      ),
    );
  }
}
