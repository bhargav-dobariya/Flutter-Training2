import 'package:flutter/material.dart';

class SearchbarAlert extends StatefulWidget {
  SearchbarAlert({Key? key}) : super(key: key);

  @override
  State<SearchbarAlert> createState() => _SearchbarAlertState();
}

class _SearchbarAlertState extends State<SearchbarAlert> {
  String _value = "Position";
  String top = "Top";
  String bottom = "Bottom";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text("Search Bar",
          style: TextStyle(fontWeight: FontWeight.bold)),
      content: SingleChildScrollView(
        child: Column(
          children: const [
            Text(
              "Select the search bar position.The page will continue to appear from the same side.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Center(),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Radio(
                value: top,
                groupValue: _value,
                onChanged: (value) {
                  _value = top;
                  setState(() {
                    Navigator.of(context).pop();
                    print(value);
                  });
                }),
            Text(
              "Top",
            )
          ],
        ),
        Row(
          children: [
            Radio(
                value: bottom,
                groupValue: _value,
                onChanged: (value) {
                  _value = bottom;
                  setState(() {
                    Navigator.of(context).pop();
                    print(value);
                  });
                }),
            Text(
              "Bottom",
            )
          ],
        ),
      ],
    );
  }
}
