import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              tween: Tween(begin: 0.0, end: _value),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.red,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(value * 200 - 100, 0),
                  child: child,
                );
              },
            ),
            SizedBox(
              width: 300,
              child: Slider.adaptive(
                value: _value,
                onChanged: (value) => setState(
                  () {
                    _value = value;
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
