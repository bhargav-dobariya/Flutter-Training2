import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/color_asset.dart';
import 'package:google_login_app/Widgets/postcard_widget.dart';
// import 'package:google_login_app/Widgets/login_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorAsset.cardbg,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      color: ColorAsset.whitecolor,
                      child: ClipPath(
                        clipper: DemoClipper(),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: Image.asset("assets/card_image.jpg",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: RowClipper(),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 15,
                        color: ColorAsset.whitecolor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 12),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 22,
                                  right: MediaQuery.of(context).size.width / 22,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "568",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.titlecolor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "668",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              30,
                                          color: ColorAsset.titlecolor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                30,
                                        color: ColorAsset.titlecolor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                30,
                                        color: ColorAsset.titlecolor,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 20),
                      width: MediaQuery.of(context).size.width,
                      color: ColorAsset.cardbg,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [PostCardWidget(), PostCardWidget()],
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 5.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.height / 25.0,
                          backgroundImage: AssetImage(
                            "assets/profile2.jpg",
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Text(
                          "Malet Anderson",
                          style: TextStyle(
                              color: ColorAsset.titlecolor,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class DemoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class RowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 30, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
