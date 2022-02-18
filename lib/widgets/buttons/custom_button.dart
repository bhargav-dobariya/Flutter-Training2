import 'package:alert_dialog/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    void showConfirm() {
      showDialog(
          context: context,
          builder: (_) {
            return Alert1();
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
            border: Border.all(color: Colors.redAccent),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: const Center(
          child: Text(
            "Delete",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
