import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/color_asset.dart';
import 'package:google_login_app/Widgets/postcard_widget.dart';
// import 'package:google_login_app/Widgets/login_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorAsset.whitecolor,
        body: SafeArea(
            child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/bg_image.jpg",
                fit: BoxFit.fitHeight,
                color: ColorAsset.blackcolor.withOpacity(0.4),
                colorBlendMode: BlendMode.darken),
            SingleChildScrollView(
              child: Card(
                color: ColorAsset.cardbg,
                margin: const EdgeInsets.all(20),
                elevation: 20,
                child: Stack(
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
                            height: 80,
                            color: ColorAsset.whitecolor,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "568",
                                        style: TextStyle(
                                            color: ColorAsset.titlecolor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "668",
                                        style: TextStyle(
                                            color: ColorAsset.titlecolor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: ColorAsset.titlecolor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          color: ColorAsset.titlecolor,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2,
                          color: ColorAsset.cardbg,
                          child: Column(
                            children: [PostCardWidget(), PostCardWidget()],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // color: Colors.black,
                      margin: EdgeInsets.only(
                          left: 110,
                          top: MediaQuery.of(context).size.height / 6.4),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 48,
                            backgroundImage: AssetImage(
                              "assets/profile.jpeg",
                            ),
                          ),
                          Text(
                            "Malet Anderson",
                            style: TextStyle(
                                color: ColorAsset.titlecolor,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}

class DemoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
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
        size.width / 2, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
