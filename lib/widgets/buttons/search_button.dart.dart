import 'package:alert_dialog/widgets/searchbar_alert.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  SearchButton({Key? key}) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
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
            border: Border.all(color: Color(0xffff0000)),
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
