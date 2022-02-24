import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:flutter/material.dart';

import '../color_assets.dart';

class DatePickerWidget extends StatefulWidget {
  DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime date = DateTime(2022, 02, 24);

  Future<void> onPressedDatePicker() async {
    final newDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1960),
        lastDate: DateTime(2100));
    setState(() {
      date = newDate ?? date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Date Picker',
              style: TextStyle(fontSize: 25),
            ),
            HomeButton(
                button_text: '${date.year}/${date.month}/${date.day}',
                button_color: ColorAsset.cyanColor,
                onPressed: onPressedDatePicker)
          ],
          // Container(
          //   child: ElevatedButton(
          //     child: Text('Select Date'),
          //     onPressed: () async {
          //       DateTime? newDate = await showDatePicker(
          //           context: context,
          //           initialDate: date,
          //           firstDate: DateTime(1960),
          //           lastDate: DateTime(2100));
          //       setState(() {
          //         date = newDate ?? date;
          //       });
          //     },
          //   ),
        ),
      ],
    );
  }
}
