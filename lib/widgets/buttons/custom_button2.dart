import 'package:alert_dialog/widgets/privacy_alert.dart';
import 'package:flutter/material.dart';

class CustomButton2 extends StatefulWidget {
  CustomButton2({Key? key}) : super(key: key);

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    void showConfirm() {
      showDialog(
          context: context,
          builder: (_) {
            return PrivacyAlert();
          });
    }

    return GestureDetector(
      onTap: () {
        print("Tapped a Container");
        showConfirm();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        height: 55,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.redAccent),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: const Center(
          child: Text(
            "Privacy",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
