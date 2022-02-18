import 'package:flutter/material.dart';

class Alert1 extends StatefulWidget {
  Alert1({Key? key}) : super(key: key);

  @override
  State<Alert1> createState() => _Alert1State();
}

class _Alert1State extends State<Alert1> {
  bool user1 = false;
  @override
  Widget build(BuildContext context) {
    print(user1);
    return AlertDialog(
      title: Text("Delete Content"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Are you sure to remove this content? You can access this file for 7 days in your trash.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Center(
              child: CheckboxListTile(
                title: const Text(
                  'Do not show it anymore',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: user1,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? value) {
                  setState(() {
                    user1 = value ?? false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 35,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color.fromARGB(255, 176, 176, 177),
                    padding: const EdgeInsets.all(5.0),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel')),
            ),
            Container(
              width: 130,
              height: 35,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color.fromARGB(255, 41, 90, 163),
                    padding: const EdgeInsets.all(5.0),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (user1 = true) {
                      print("checkbox selected");
                    }
                  },
                  child: Text('Confirm')),
            ),
          ],
        )
      ],
    );
  }
}
