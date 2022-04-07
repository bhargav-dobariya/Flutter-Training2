import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';
import 'package:google_login_app/Screens/home_page.dart';

class TwitterLoginConfirm extends StatefulWidget {
  TwitterLoginConfirm({Key? key}) : super(key: key);

  @override
  State<TwitterLoginConfirm> createState() => _TwitterLoginConfirm();
}

class _TwitterLoginConfirm extends State<TwitterLoginConfirm> {
  Future Logout() async {
    await FacebookAuth.instance.logOut();
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    print("confirm page----------");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Twitter login page"),
          actions: [
            Center(
              child: Container(
                child: InkWell(
                  child: const Text("LogOut"),
                  onTap: Logout,
                ),
              ),
            )
          ],
        ),
        body: Center(child: Text("Logged in through twitter")));
  }
}
