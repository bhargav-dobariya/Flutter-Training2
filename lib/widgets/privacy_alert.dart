import 'package:flutter/material.dart';

class PrivacyAlert extends StatefulWidget {
  PrivacyAlert({Key? key}) : super(key: key);

  @override
  State<PrivacyAlert> createState() => _PrivacyAlertState();
}

class _PrivacyAlertState extends State<PrivacyAlert> {
  String dropdownValue = 'Automatic';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Privacy info"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "The backups created with this functionality may contains some sensitive data.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Center(
              child: Container(
                width: 270,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Container(
                      margin: EdgeInsets.only(left: 140),
                      child: const Icon(Icons.arrow_downward)),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Automatic', 'Always', 'Never']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
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
                    print("User Selcted:-" + dropdownValue);
                  },
                  child: Text('Confirm')),
            ),
          ],
        )
      ],
    );
  }
}
