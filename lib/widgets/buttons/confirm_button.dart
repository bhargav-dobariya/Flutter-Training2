import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  ConfirmButton({Key? key}) : super(key: key);

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 90,
      height: 35,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: Color(0xff3643b5),
            padding: const EdgeInsets.all(5.0),
            primary: Color(0xffffffff),
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
            // if (user1 = true) {
            //   print("checkbox selected");
            // }
          },
          child: Text('Got it')),
    );
  }
}
