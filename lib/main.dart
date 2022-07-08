import 'package:flutter/material.dart';
import 'package:google_login_app/screens/tween_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TweenAnimation());
  }
}
