import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';

class PortraitScreen extends StatefulWidget {
  const PortraitScreen({Key? key}) : super(key: key);

  @override
  State<PortraitScreen> createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(children: [
              Container(
                child: Image.asset(
                  "assets/Card_Image.jpg",
                  fit: BoxFit.cover,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.8,
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 160,
                    left: MediaQuery.of(context).size.height / 250,
                  ),
                  color: ColorAsset.darkgreycolor,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 210,
                      horizontal: MediaQuery.of(context).size.width / 60),
                  child: Text(
                    "M",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                        color: ColorAsset.whitecolor,
                        fontWeight: FontWeight.w600),
                  )),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3.3),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 20,
                        backgroundImage: const AssetImage(
                          "assets/profile2.jpg",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Text(
                        AppString.txtDaveGamache,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 35,
                            color: ColorAsset.blackcolor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text(
                        AppString.txtDesignerOnMedium,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 80,
                            color: ColorAsset.greycolor,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 20),
                        child: Column(
                          children: [
                            Divider(
                              color: ColorAsset.lightgreycolor,
                              thickness: 1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: ColorAsset.lightgreycolor))),
                              // width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 1.7),
                              child: TabBar(
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: ColorAsset.blackcolor),
                                unselectedLabelStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorAsset.greycolor,
                                ),
                                labelPadding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height /
                                        74),
                                labelColor: ColorAsset.blackcolor,
                                tabs: [
                                  Tab(
                                    height:
                                        MediaQuery.of(context).size.height / 60,
                                    child: Text(
                                      AppString.txtPost,
                                      style: TextStyle(
                                        letterSpacing: 1.2,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                70,
                                        // color: ColorAsset.greycolor,
                                        // fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    height:
                                        MediaQuery.of(context).size.height / 60,
                                    child: Text(
                                      AppString.txtCollection,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                70,
                                        // color: ColorAsset.greycolor,
                                        // fontWeight: FontWeight.w600
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
                                  top: MediaQuery.of(context).size.height / 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        color: ColorAsset.blackcolor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.lightgreycolor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height /
                                                70),
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
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
                                  top: MediaQuery.of(context).size.height / 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        color: ColorAsset.blackcolor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.lightgreycolor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height /
                                                70),
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
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
                                  top: MediaQuery.of(context).size.height / 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        color: ColorAsset.blackcolor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.lightgreycolor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height /
                                                70),
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                110),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla est purus, ultrices in porttitor in, accumsan non quam. Nam consectetur porttitor rhoncus. Curabitur eu est et leo feugiat.",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.blackcolor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        )));
  }
}
