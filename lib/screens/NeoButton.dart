import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  final onTap;
  bool isButtonPressed;

  NeuButton({Key? key, @required this.onTap, required this.isButtonPressed})
      : super(key: key);

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    _deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: widget.isButtonPressed
                  ? Colors.grey.shade200
                  : Colors.grey.shade300),
          boxShadow: widget.isButtonPressed
              ? []
              : [
                  //darker shadow on bottom right
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(6, 6),
                    blurRadius: 14,
                    spreadRadius: 1,
                  ),
                  //lighter shadow on top left
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
        ),
        child: Icon(
          Icons.favorite,
          size: 60,
          color: widget.isButtonPressed ? Colors.red[200] : Colors.red[400],
        ),
      ),
    );
  }
}
