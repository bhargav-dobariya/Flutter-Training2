import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';
import 'package:google_login_app/Screens/home_page.dart';

class FbLoginConfirm extends StatefulWidget {
  FbLoginConfirm({Key? key}) : super(key: key);

  @override
  State<FbLoginConfirm> createState() => _FbLoginConfirm();
}

class _FbLoginConfirm extends State<FbLoginConfirm> {
  Future Logout() async {
    await FacebookAuth.instance.logOut();
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Facebook Login Page"),
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
        body: Center(child: Text(AppString.txtloggedinfb)));
  }
}
