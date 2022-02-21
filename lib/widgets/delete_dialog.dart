import 'package:flutter/material.dart';

class DeleteAlert extends StatefulWidget {
  DeleteAlert({Key? key}) : super(key: key);

  @override
  State<DeleteAlert> createState() => _DeleteAlertState();
}

class _DeleteAlertState extends State<DeleteAlert> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    print(checkValue);
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text("Delete Content",
          style: TextStyle(fontWeight: FontWeight.bold)),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Are you sure to remove this content? You can access this file for 7 days in your trash.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.all(0),
              title: const Text(
                'Do not show it anymore',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              value: checkValue,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  checkValue = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 130,
              height: 35,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xffb0b0b1),
                    padding: const EdgeInsets.all(5.0),
                    primary: Color(0xff000000),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xff3046ff),
                    padding: const EdgeInsets.all(5.0),
                    primary: Color(0xffffffff),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (checkValue = true) {
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
