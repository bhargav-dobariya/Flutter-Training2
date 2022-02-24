import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:alert_dialog/resources/color_assets.dart';
import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  TimePickerWidget({Key? key}) : super(key: key);

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 20);
  Future<void> onPressedTime() async {
    final newTime = await showTimePicker(
      context: context,
      initialTime: time,
    );
    setState(() {
      time = newTime ?? time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              '${time.hour}:${time.minute}',
              style: TextStyle(fontSize: 25),
            ),
          ),
          HomeButton(
              button_text: 'Time',
              button_color: ColorAsset.foloraWhiteButton,
              onPressed: onPressedTime)
        ],
      )
    ]);
  }
}
