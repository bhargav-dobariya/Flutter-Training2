import 'package:alert_dialog/resources/color_assets.dart';
import 'package:alert_dialog/resources/string_asset.dart';
import 'package:alert_dialog/screens/allmail_screen.dart';
import 'package:alert_dialog/screens/draft_screen.dart';
import 'package:alert_dialog/screens/followup_screen.dart';
import 'package:alert_dialog/screens/inbox_screen.dart';
import 'package:alert_dialog/screens/sentmail_screen.dart';
import 'package:alert_dialog/screens/spam_screen.dart';
import 'package:alert_dialog/screens/starred_screen.dart';
import 'package:alert_dialog/screens/trash_screen.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    const email = 'bhargavdobariya06@gmail.com';
    const urlImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG_o7wLVS2EWUjk99rpg429GZbrcwSqXPmfg&usqp=CAU';
    return Drawer(
        child: Material(
      child: ListView(
        children: [
          buildHeader(
            urlImage: urlImage,
            email: email,
          ),
          buildMenuItem(
            text: StringAssets.txtinbox,
            icon: Icons.inbox,
            onClicked: () => selctedItem(context, 0),
          ),
          buildMenuItem(
            text: StringAssets.txtstarred,
            icon: Icons.star_border_outlined,
            onClicked: () => selctedItem(context, 1),
          ),
          buildMenuItem(
            text: StringAssets.txtsentmail,
            icon: Icons.mark_email_read,
            onClicked: () => selctedItem(context, 2),
          ),
          buildMenuItem(
            text: StringAssets.txtdraftmail,
            icon: Icons.drafts_sharp,
            onClicked: () => selctedItem(context, 3),
          ),
          buildMenuItem(
            text: StringAssets.txtallmail,
            icon: Icons.all_inbox,
            onClicked: () => selctedItem(context, 4),
          ),
          buildMenuItem(
            text: StringAssets.txttrashmail,
            icon: Icons.delete_forever_outlined,
            onClicked: () => selctedItem(context, 5),
          ),
          buildMenuItem(
            text: StringAssets.txtspam,
            icon: Icons.work_off_rounded,
            onClicked: () => selctedItem(context, 6),
          ),
          buildMenuItem(
            text: StringAssets.txtfollowup,
            icon: Icons.art_track_outlined,
            onClicked: () => selctedItem(context, 7),
          ),
        ],
      ),
    ));
  }

  buildHeader({required String urlImage, required String email}) => Container(
      decoration: BoxDecoration(color: ColorAsset.skybluecolor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
        Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              email,
              style: TextStyle(color: ColorAsset.whitecolor),
            ))
      ]));
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
    hoverColor: ColorAsset.blueColor,
    onTap: onClicked,
  );
}

void selctedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const InboxPage(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const StarredPage(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SentaMailPagee(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DraftMailPage(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AllMailPage(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const TrashPage(),
      ));
      break;
    case 6:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SpamPage(),
      ));
      break;
    case 7:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const FollowUpPage(),
      ));
      break;
  }
}
