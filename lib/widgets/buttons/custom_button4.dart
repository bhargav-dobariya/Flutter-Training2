import 'package:alert_dialog/widgets/inkwell_alert.dart';
import 'package:alert_dialog/widgets/privacy_alert.dart';
import 'package:flutter/material.dart';

class CustomButton4 extends StatefulWidget {
  CustomButton4({Key? key}) : super(key: key);

  @override
  State<CustomButton4> createState() => _CustomButton4State();
}

class _CustomButton4State extends State<CustomButton4> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          showDialog(
              context: context,
              builder: (_) {
                return InkAlert(
                    title: "Whoa! Take it easy",
                    content: "you can only post 1 quiz every 2 minutes");
              });
        },
        onDoubleTap: () {
          showDialog(
              context: context,
              builder: (_) {
                return InkAlert(
                    title: "Whoa! Take it easy",
                    content: "Do you want to fill?");
              });
        },
        onLongPress: () {
          showDialog(
              context: context,
              builder: (_) {
                return InkAlert(
                    title: "Whoa! Take it easy",
                    content: "oops quiz is not created");
              });
        },
        splashColor: Color.fromARGB(255, 37, 131, 194),
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          height: 55,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 82, 249, 255)),
              borderRadius: const BorderRadius.all(Radius.circular(100))),
          child: const Center(
            child: Text(
              "InkWell",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
