import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/color_asset.dart';

class PostCardWidget extends StatefulWidget {
  PostCardWidget({Key? key}) : super(key: key);

  @override
  State<PostCardWidget> createState() => _PostCardWidgetState();
}

class _PostCardWidgetState extends State<PostCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 4,
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 20,
                  left: MediaQuery.of(context).size.width / 30,
                  right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/profile2.jpg",
                        ),
                      ),
                      Text(
                          "Scoring on the opposition is nothing new for\nSteph Cury.Dancing on them might be.",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              fontWeight: FontWeight.w600,
                              color: ColorAsset.titlecolor))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 35,
                        left: MediaQuery.of(context).size.width / 52,
                        bottom: MediaQuery.of(context).size.height / 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 65,
                          width: MediaQuery.of(context).size.width / 15,
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 23),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 120,
                            ),
                            child: Center(
                              child: Text("586",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              45,
                                      color: ColorAsset.whitecolor,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: ColorAsset.titlecolor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.remove_red_eye_rounded,
                              color: ColorAsset.visibilityColor,
                              size: MediaQuery.of(context).size.width / 23,
                            ),
                          )),
                          TextSpan(
                            text: "36 ",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              color: ColorAsset.visibilityColor,
                            ),
                          ),
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 5),
                            child: Icon(
                              Icons.comment_bank_rounded,
                              color: ColorAsset.visibilityColor,
                              size: MediaQuery.of(context).size.width / 23,
                            ),
                          )),
                          TextSpan(
                            text: "6 ",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              color: ColorAsset.visibilityColor,
                            ),
                          ),
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 5),
                            child: Icon(
                              Icons.share_rounded,
                              size: MediaQuery.of(context).size.width / 23,
                              color: ColorAsset.visibilityColor,
                            ),
                          )),
                          TextSpan(
                            text: "2 ",
                            style: TextStyle(
                              color: ColorAsset.visibilityColor,
                              fontSize: MediaQuery.of(context).size.width / 30,
                            ),
                          ),
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            )),
        Center(
          child: Container(
              height: MediaQuery.of(context).size.height / 28,
              width: MediaQuery.of(context).size.width / 2.2,
              child: Center(
                child: Text(
                  "February 22,2016",
                  style: TextStyle(
                      color: ColorAsset.whitecolor,
                      fontSize: MediaQuery.of(context).size.width / 33,
                      fontWeight: FontWeight.w700),
                ),
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorAsset.titlecolor,

                    blurRadius: 3,
                    offset:
                        const Offset(0.0, 3.0), // changes position of shadow
                  ),
                ],
                color: ColorAsset.titlecolor,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 20),
              )),
        ),
      ],
    );
  }
}
