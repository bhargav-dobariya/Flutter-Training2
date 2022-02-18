import 'package:alert_dialog/widgets/buttons/confirm_button.dart';

import 'package:flutter/material.dart';

class InkAlert extends StatefulWidget {
  String title = '';
  String content = '';
  InkAlert({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  State<InkAlert> createState() => _InkAlertState();
}

class _InkAlertState extends State<InkAlert> {
  @override
  Widget build(BuildContext context) {
    print(widget.title);
    return AlertDialog(
      title: Text(widget.title),
      content: SingleChildScrollView(
          child: Column(
        children: [Text(widget.content), ConfirmButton()],
      )),
    );
  }
}
