import 'package:alert_dialog/widgets/delete_dialog.dart';
import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
  DeleteButton({Key? key}) : super(key: key);

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    void showConfirm() {
      showDialog(
          context: context,
          builder: (_) {
            return DeleteAlert();
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
            border: Border.all(color: Color(0xff987993)),
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
