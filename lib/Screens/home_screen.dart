import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List profieleImage = [
    "assets/bedroom1.jpeg",
    "assets/bedroom2.webp",
    "assets/bedroom3.jpeg",
    "assets/bedroom1.jpeg",
    "assets/bedroom2.webp",
    "assets/bedroom3.jpeg",
  ];
  late double _deviceHeight;
  late double _deviceWidth;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(child: _buildUi());
  }

  Widget _buildUi() {
    return Scaffold(
      backgroundColor: ColorAsset.whitecolor,
      key: scaffoldKey,
      body: _bodyUi(),
    );
  }

  Widget _bodyUi() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Text(
            "Games",
            style: TextStyle(color: ColorAsset.whitecolor),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "What We're Playing",
            style: TextStyle(color: ColorAsset.whitecolor),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Image.asset(profieleImage[index]),
                              title: const Text("Candy crush"),
                            );
                          })
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
