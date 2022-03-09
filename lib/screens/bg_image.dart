import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://cdn.pixabay.com/photo/2020/08/14/17/13/light-bulbs-5488573_1280.jpg",
      fit: BoxFit.cover,
      color: Colors.white.withOpacity(0.1),
      colorBlendMode: BlendMode.colorBurn,
    );
  }
}
