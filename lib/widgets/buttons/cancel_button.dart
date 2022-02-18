import 'package:flutter/material.dart';

class CancelButton extends StatefulWidget {
  CancelButton({Key? key}) : super(key: key);

  @override
  State<CancelButton> createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 35,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Color.fromARGB(255, 176, 176, 177),
            padding: const EdgeInsets.all(5.0),
            primary: Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel')),
    );
  }
}
