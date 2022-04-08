import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';

class LandscapeScreen extends StatefulWidget {
  LandscapeScreen({Key? key}) : super(key: key);

  @override
  State<LandscapeScreen> createState() => _LandscapeScreenState();
}

class _LandscapeScreenState extends State<LandscapeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: SafeArea(
                child: Stack(children: [
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 3,
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2,
              ),

              child: Image.asset(
                "assets/Card_Image.jpg",
                fit: BoxFit.cover,
              ),
              // width: MediaQuery.of(context).size.width/3,
              // height: MediaQuery.of(context).size.height / 1.3,
            ),
            Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 70,
                  left: MediaQuery.of(context).size.width / 200,
                ),
                color: ColorAsset.darkgreycolor,
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 110,
                    horizontal: MediaQuery.of(context).size.width / 120),
                child: Text(
                  "M",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      color: ColorAsset.whitecolor,
                      fontWeight: FontWeight.w600),
                )),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.75,
                    left: MediaQuery.of(context).size.width / 11.3),
                child: Column(children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 23,
                    backgroundImage: const AssetImage(
                      "assets/profile2.jpg",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  Text(
                    AppString.txtDaveGamache,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 45,
                        color: ColorAsset.blackcolor,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  Text(
                    AppString.txtDesignerOnMedium,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 80,
                        color: ColorAsset.greycolor,
                        fontWeight: FontWeight.w600),
                  ),
                ])),
            SingleChildScrollView(
              child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 3,
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 15,
                    top: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: ColorAsset.lightgreycolor))),
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 2.5),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.values.first,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: ColorAsset.blackcolor),
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: ColorAsset.greycolor,
                          ),
                          labelPadding: EdgeInsets.only(
                              // right: MediaQuery.of(context).size.width / 50,
                              bottom: MediaQuery.of(context).size.height / 30),
                          labelColor: ColorAsset.blackcolor,
                          tabs: [
                            Tab(
                              height: MediaQuery.of(context).size.height / 30,
                              child: Text(
                                AppString.txtPost,
                                style: TextStyle(
                                  letterSpacing: 1.2,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ),
                            ),
                            Tab(
                              height: MediaQuery.of(context).size.height / 30,
                              child: Text(
                                AppString.txtCollection,
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ),
                            ),
                          ],
                          indicatorColor: ColorAsset.blackcolor,
                        ),
                      ),
                      Card(
                        elevation: 0,
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 40,
                            bottom: MediaQuery.of(context).size.height / 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 40,
                                  color: ColorAsset.blackcolor,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height / 110),
                              child: Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 60,
                                    color: ColorAsset.lightgreycolor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 80),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 50,
                                    color: ColorAsset.blackcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 40,
                            bottom: MediaQuery.of(context).size.height / 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 40,
                                  color: ColorAsset.blackcolor,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height / 110),
                              child: Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 60,
                                    color: ColorAsset.lightgreycolor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 70),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 50,
                                    color: ColorAsset.blackcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 40,
                            bottom: MediaQuery.of(context).size.height / 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 40,
                                  color: ColorAsset.blackcolor,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height / 110),
                              child: Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 60,
                                    color: ColorAsset.lightgreycolor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 70),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 50,
                                    color: ColorAsset.blackcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ])
        ]))));
  }
}
