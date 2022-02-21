import 'package:alert_dialog/widgets/inkwell_alert.dart';
import 'package:alert_dialog/widgets/privacy_alert.dart';
import 'package:flutter/material.dart';

class InkWellButton extends StatefulWidget {
  InkWellButton({Key? key}) : super(key: key);

  @override
  State<InkWellButton> createState() => _InkWellButtonState();
}

class _InkWellButtonState extends State<InkWellButton> {
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
                    title: "Do you want to finish the Quiz?",
                    content: "You Did it!!");
              });
        },
        onLongPress: () {
          showDialog(
              context: context,
              builder: (_) {
                return InkAlert(
                    title: "Oops! Quiz was not created",
                    content: "You can try again!");
              });
        },
        splashColor: Color(0xffff00bf),
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          height: 55,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff478585)),
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
