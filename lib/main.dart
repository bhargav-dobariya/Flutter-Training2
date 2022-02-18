import 'package:flutter/material.dart';
import 'package:listview_task/screens/home_page.dart';
import 'package:listview_task/screens/listview.dart';
import 'package:listview_task/screens/listview_builder.dart';
import 'package:listview_task/screens/separated_listview.dart';

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
        home: HomeScreen(),
        routes: {
          "/Listview": (context) => Listview(),
          "/ListBuilder": (context) => ListBuilder(),
          "/SaparatedList": (context) => SaparatedListView(),
        });
  }
}
