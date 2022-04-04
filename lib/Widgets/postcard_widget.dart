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
              padding: const EdgeInsets.only(top: 35.0, left: 20, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          "assets/profile.jpeg",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                          "Scoring on the opposition is nothing new for\n Steph Cury.Dancing on them might be.",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 34.5))
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          child: Text(
                            "586",
                            style: TextStyle(
                                fontSize: 12, color: ColorAsset.whitecolor),
                          ),
                          decoration: BoxDecoration(
                              color: ColorAsset.titlecolor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          const WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.remove_red_eye_rounded,
                              size: 15,
                            ),
                          )),
                          TextSpan(
                            text: "36 ",
                            style: TextStyle(
                                fontSize: 11, color: ColorAsset.blackcolor),
                          ),
                          const WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 5),
                            child: Icon(
                              Icons.comment_bank_rounded,
                              size: 15,
                            ),
                          )),
                          TextSpan(
                            text: "6 ",
                            style: TextStyle(
                                fontSize: 11, color: ColorAsset.blackcolor),
                          ),
                          const WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 5),
                            child: Icon(Icons.share_rounded, size: 15),
                          )),
                          TextSpan(
                            text: "2 ",
                            style: TextStyle(
                                fontSize: 11, color: ColorAsset.blackcolor),
                          ),
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 5.2,
            ),
            height: MediaQuery.of(context).size.height / 28,
            width: MediaQuery.of(context).size.width / 2.2,
            child: Center(
              child: Text(
                "February 22,2016",
                style: TextStyle(color: ColorAsset.whitecolor),
              ),
            ),
            decoration: BoxDecoration(
              color: ColorAsset.titlecolor,
              borderRadius: BorderRadius.circular(10),
            )),
      ],
    );
  }
}
