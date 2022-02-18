import 'package:alert_dialog/widgets/searchbar_alert.dart';
import 'package:flutter/material.dart';

class CustomButton3 extends StatefulWidget {
  CustomButton3({Key? key}) : super(key: key);

  @override
  State<CustomButton3> createState() => _CustomButton3State();
}

class _CustomButton3State extends State<CustomButton3> {
  @override
  Widget build(BuildContext context) {
    void showConfirm() {
      showDialog(
          context: context,
          builder: (_) {
            return SearchbarAlert();
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
            color: Color.fromARGB(255, 59, 226, 255),
            border: Border.all(color: Colors.redAccent),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: const Center(
          child: Text(
            "Search Bar",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
