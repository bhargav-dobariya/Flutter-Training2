import 'package:flutter/material.dart';

class SearchbarAlert extends StatefulWidget {
  SearchbarAlert({Key? key}) : super(key: key);

  @override
  State<SearchbarAlert> createState() => _SearchbarAlertState();
}

class _SearchbarAlertState extends State<SearchbarAlert> {
  String RadioGroup = "Position";
  String top = "Top";
  String bottom = "Bottom";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Search Bar"),
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
                groupValue: RadioGroup,
                onChanged: (value) {
                  RadioGroup = top;
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
                groupValue: RadioGroup,
                onChanged: (value) {
                  RadioGroup = bottom;
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
