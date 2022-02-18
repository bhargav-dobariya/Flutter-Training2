import 'package:alert_dialog/screens/home_page.dart';
import 'package:alert_dialog/screens/listview.dart';
import 'package:alert_dialog/screens/listview_builder.dart';
import 'package:flutter/material.dart';
import 'package:alert_dialog/screens/separated_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomeScreen(),
        routes: {
          "/Listview": (context) => Listview(),
          "/ListBuilder": (context) => ListBuilder(),
          "/SaparatedList": (context) => SaparatedListView(),
        });
  }
}
