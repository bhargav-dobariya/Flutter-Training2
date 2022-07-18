import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List gameImage1 = [
    "assets/game_1.jpeg",
    "assets/game_6.png",
    "assets/game_2.jpg",
    "assets/game_3.jpeg",
    "assets/game_4.png",
    "assets/game_5.webp",
    "assets/game_3.jpeg",
    "assets/game_5.webp",
    "assets/game_6.png",
  ];
  List gameTitle1 = [
    "San Chin's Adventure",
    "Clash of Clans",
    "Temple Run",
    "Battle Ground Mobile India",
    "Spider Man",
    "BGMI",
    "Mini Millatry"
        "Clash Of Kings",
    "Hay - Day"
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
        backgroundColor: ColorAsset.blackcolor,
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: _deviceWidth * 0.02),
            child: Column(
              children: [
                _gridOne(),
                SizedBox(
                  height: _deviceHeight * 0.025,
                ),
                _gridTwo(),
                SizedBox(
                  height: _deviceHeight * 0.025,
                ),
                _gridThree()
              ],
            ),
          ),
        ));
  }

  Widget _gridOne() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.02),

        // alignment: Alignment.topCenter,
        child: Text(
          "Games",
          style: TextStyle(color: ColorAsset.whitecolor),
        ),
      ),
      Container(
        alignment: Alignment.topLeft,
        child: Text(
          "What We're Playing",
          style: TextStyle(
              color: ColorAsset.whitecolor,
              fontSize: _deviceHeight * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
          height: _deviceHeight * 0.26,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: _deviceHeight * 0.047 / _deviceWidth * 2,
              mainAxisSpacing: _deviceWidth * 0.032,
            ),
            itemCount: gameTitle1.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        gameImage1[index],
                        height: 60.0,
                        width: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: _deviceWidth * 0.58,
                      child: Text(
                        gameTitle1[index],
                        style: TextStyle(color: ColorAsset.whitecolor),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.download,
                        color: ColorAsset.blueColor,
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    ]);
  }

  Widget _gridTwo() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.02),
        alignment: Alignment.topLeft,
        child: Text(
          "Top Apple Arcade Games For You",
          style: TextStyle(
              color: ColorAsset.whitecolor,
              fontSize: _deviceHeight * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: _deviceHeight * 0.26,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: _deviceHeight * 0.047 / _deviceWidth * 2,
            mainAxisSpacing: _deviceWidth * 0.032,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 1,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      gameImage1[index],
                      height: 60.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: _deviceWidth * 0.58,
                    child: Text(
                      gameTitle1[index],
                      style: TextStyle(color: ColorAsset.whitecolor),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.download,
                      color: ColorAsset.blueColor,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }

  Widget _gridThree() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.02),
        alignment: Alignment.topLeft,
        child: Text(
          "Recomended for You",
          style: TextStyle(
              color: ColorAsset.whitecolor,
              fontSize: _deviceHeight * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: _deviceHeight * 0.26,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: _deviceHeight * 0.047 / _deviceWidth * 2,
            mainAxisSpacing: _deviceWidth * 0.032,
          ),
          itemCount: gameTitle1.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 1,
              // width: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      gameImage1[index],
                      height: 60.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: _deviceWidth * 0.58,
                    child: Text(
                      gameTitle1[index],
                      style: TextStyle(color: ColorAsset.whitecolor),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.download,
                      color: ColorAsset.blueColor,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
