import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/string_asset.dart';

class LogInConfirm extends StatefulWidget {
  LogInConfirm({Key? key}) : super(key: key);

  @override
  State<LogInConfirm> createState() => _LogInConfirmState();
}

class _LogInConfirmState extends State<LogInConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text(AppString.txtSuccessfullyLoggedIn)));
  }
}
