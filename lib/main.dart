import 'package:alert_dialog/screens/home_page.dart';
import 'package:alert_dialog/screens/gridview_extend.dart';
import 'package:alert_dialog/screens/grid_builder.dart';
import 'package:flutter/material.dart';
import 'package:alert_dialog/screens/grid_count.dart';

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
          "/GridBuilder": (context) => GridBuilder(),
          "/GridCount": (context) => GridCount(),
          "/GridViewExtend": (context) => GridViewExtend(),
        });
  }
}
