import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _mobileConnectionColor = ColorAsset.whitecolor;
  Color _wifiConnectionColor = ColorAsset.whitecolor;
  Color _mobileIconColor = ColorAsset.blackcolor;
  Color _wifiIconColor = ColorAsset.blackcolor;

  bool _visible = true;
  bool _visible2 = false;
  double _mobileIconSize = 40;
  double _mobileWidth = 50;
  double _mobileHeight = 50;

  double _wifiIconSize = 20;
  double _wifiWidth = 50;
  double _wifiHeight = 50;
  late StreamSubscription _subscription;

  void connectivityStatus(ConnectivityResult result) {
    print("Working");
    if (result == ConnectivityResult.mobile) {
      setState(() {
        _mobileHeight = 70;
        _mobileWidth = 70;
        _mobileIconSize = 40;
        _wifiIconSize = 20;
        _wifiWidth = 50;
        _wifiHeight = 50;
        _visible2 = true;
        _visible = false;
        _mobileConnectionColor = ColorAsset.lightgreeenColor;
        _wifiConnectionColor = ColorAsset.whitecolor;
        _mobileIconColor = ColorAsset.whitecolor;
        _wifiIconColor = ColorAsset.blackcolor;
      });
    } else if (result == ConnectivityResult.wifi) {
      setState(() {
        _wifiHeight = 70;
        _wifiWidth = 70;
        _wifiIconSize = 40;
        _mobileHeight = 50;
        _mobileWidth = 50;
        _mobileIconSize = 20;
        _visible = false;
        _visible2 = true;
        _mobileIconColor = ColorAsset.blackcolor;
        _wifiIconColor = ColorAsset.whitecolor;
        _mobileConnectionColor = ColorAsset.whitecolor;
        _wifiConnectionColor = ColorAsset.lightgreeenColor;
      });
    } else {
      setState(() {
        _mobileHeight = 50;
        _mobileWidth = 50;
        _mobileIconSize = 20;
        _wifiHeight = 50;
        _wifiWidth = 50;
        _wifiIconSize = 20;
        _visible = true;
        _mobileConnectionColor = ColorAsset.whitecolor;
        _wifiConnectionColor = ColorAsset.whitecolor;
        _mobileConnectionColor = ColorAsset.whitecolor;
        _wifiConnectionColor = ColorAsset.whitecolor;
        _wifiIconColor = ColorAsset.blackcolor;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _subscription =
        Connectivity().onConnectivityChanged.listen(connectivityStatus);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorAsset.foloraWhiteButton,
        appBar: AppBar(
          title: Text(AppString.connectivityTask),
          backgroundColor: ColorAsset.blackcolor,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer1(
                  _mobileHeight,
                  _mobileWidth,
                  _mobileIconSize,
                  Icon(
                    Icons.signal_cellular_alt_sharp,
                    color: _mobileIconColor,
                    size: _mobileIconSize,
                  ),
                  _mobileConnectionColor),
              buildContainer1(
                  _wifiHeight,
                  _wifiWidth,
                  _wifiIconSize,
                  Icon(
                    Icons.wifi_sharp,
                    color: _wifiIconColor,
                    size: _wifiIconSize,
                  ),
                  _wifiConnectionColor),
              buildContainer2()
            ],
          ),
        ));
  }

  Widget buildContainer1(
      double height, double width, double size, Icon _icon, Color _color) {
    return Visibility(
      visible: _visible2,
      child: AnimatedContainer(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: _color,
              boxShadow: [
                BoxShadow(
                  color: ColorAsset.lightgreycolor2,
                  blurRadius: 30.0,
                )
              ]),
          duration: const Duration(seconds: 3),
          width: width,
          height: height,
          child: _icon),
    );
  }

  Widget buildContainer2() {
    return Visibility(
        visible: _visible,
        child: AnimatedContainer(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: ColorAsset.lightRedColor,
                boxShadow: [
                  BoxShadow(
                    color: ColorAsset.lightgreycolor2,
                    blurRadius: 30.0,
                  )
                ]),
            duration: const Duration(seconds: 3),
            width: 70,
            height: 70,
            child: Icon(
              Icons.airplanemode_on_sharp,
              color: ColorAsset.whitecolor,
            )));
  }
}
