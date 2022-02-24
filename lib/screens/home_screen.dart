import 'package:alert_dialog/resources/widgets/date_picker.dart';
import 'package:alert_dialog/resources/widgets/date_range_widget.dart';
import 'package:alert_dialog/resources/widgets/time_picker.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DatePickerWidget(),
              DateRangeWidget(),
              TimePickerWidget()
            ],
          ),
        ),
      ),
    );
  }
}
