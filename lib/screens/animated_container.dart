import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Random random = Random();
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter app"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
          width: _width,
          height: _height,
          color: _color,
          curve: Curves.decelerate,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _update,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  void _update() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(128),
        random.nextInt(128),
        random.nextInt(128),
        1,
      );
    });
  }
}
