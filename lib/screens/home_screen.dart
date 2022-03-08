import 'package:alert_dialog/buttons/home_screen_button.dart';
import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/screens/notes_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final notesController = TextEditingController();
  void onPressed() {
    setNotesData(notesController.text);
  }

  void onPressed2() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NotesListScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            controller: notesController,
            decoration: const InputDecoration(hintText: "Enter notes"),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20),
              child: HomeButton(
                button_text: "save",
                button_color: ColorAsset.cadetButton,
                onPressed: onPressed,
              )),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: HomeButton(
                button_text: "view notes",
                button_color: ColorAsset.foloraWhiteButton,
                onPressed: onPressed2),
          )
        ],
      ),
    );
  }

  Future<void> setNotesData(noteValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
  }
}
