import 'package:alert_dialog/widgets/privacy_alert.dart';
import 'package:flutter/material.dart';

class PrivacyButton extends StatefulWidget {
  PrivacyButton({Key? key}) : super(key: key);

  @override
  State<PrivacyButton> createState() => _PrivacyButtonState();
}

class _PrivacyButtonState extends State<PrivacyButton> {
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
            color: Color(0xff89909),
            border: Border.all(color: Color(0xff0000000)),
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
