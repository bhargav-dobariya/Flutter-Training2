import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  late var card;
  late var stringCard;
  final cardImages = [
    "assets/bedroom1.jpeg",
    "assets/bedroom2.webp",
    "assets/bedroom3.jpeg",
  ];
  final cardTitle = [
    "${AppString.txtBedroom}\n${AppString.txt3by10}",
    "${AppString.txtLivingRoom}\n${AppString.txt5by13}",
    "${AppString.txtBedroom}\n${AppString.txt3by12}",
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
      key: scaffoldKey,
      drawer: Padding(
        padding: EdgeInsets.only(bottom: _deviceHeight * 0.18),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(60), topRight: Radius.circular(60)),
          child: SizedBox(
            width: _deviceWidth * 0.45,
            height: _deviceHeight * 0.9,
            child: Drawer(
              backgroundColor: ColorAsset.drawerColor,
              child: ListView(
                children: [
                  Container(
                    height: _deviceHeight * 0.16,
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: ColorAsset.whitecolor),
                    title: Text(
                      AppString.txtFamily,
                      style: TextStyle(color: ColorAsset.whitecolor),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.04,
                  ),
                  ListTile(
                    leading: Icon(Icons.devices, color: ColorAsset.whitecolor),
                    title: Text(AppString.txtDevices,
                        style: TextStyle(color: ColorAsset.whitecolor)),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.04,
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.timer_sharp, color: ColorAsset.whitecolor),
                    title: Text(AppString.txtFamily,
                        style: TextStyle(color: ColorAsset.whitecolor)),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.04,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: ColorAsset.whitecolor),
                    title: Text(AppString.txtsettings,
                        style: TextStyle(color: ColorAsset.whitecolor)),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.04,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: _deviceWidth * 0.01),
            child: GestureDetector(
                onTap: () => scaffoldKey.currentState?.openDrawer(),
                child: SizedBox(
                    height: _deviceHeight * 0.5,
                    child: Image.asset(
                      "assets/IMG_7907.JPG",
                      fit: BoxFit.contain,
                    ))),
          )),
      body: _bodyUi(),
    );
  }

  Widget _bodyUi() {
    return Padding(
      padding: EdgeInsets.only(left: _deviceWidth * 0.05),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
                child: Container(
              width: _deviceWidth * 0.24,
              height: _deviceHeight * 0.065,
              // width: _deviceWidth * 0.99,
              decoration: BoxDecoration(
                  color: ColorAsset.whitecolor,
                  border: const Border(
                    right: BorderSide.none,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: Colors.black26,
                    ),
                  ],
                  borderRadius:
                      const BorderRadius.horizontal(left: Radius.circular(30))),
            )),
          ),
          Container(
            margin: EdgeInsets.only(
                left: _deviceWidth * 0.75, top: _deviceHeight * 0.0072),
            height: _deviceHeight * 0.048,
            width: _deviceWidth * 0.095,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black26,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(
              child: Text(
                "\u207a",
                style: TextStyle(
                    fontSize: _deviceHeight * 0.06,
                    color: ColorAsset.lightgreycolor),
              ),
            ),
          ),
          _buildUiTemperature(),
          _buildUiGreetings(),
          Container(
              margin: EdgeInsets.only(
                top: _deviceHeight * 0.36,
              ),
              child: Text(
                AppString.txtRooms,
                style: TextStyle(
                    color: ColorAsset.lightgreycolor,
                    fontSize: _deviceHeight * 0.025,
                    fontWeight: FontWeight.w700),
              )),
          Container(
            margin: EdgeInsets.only(
              top: _deviceHeight * 0.43,
            ),
            child: CarouselSlider.builder(
                itemCount: cardImages.length,
                itemBuilder: ((context, index, realIndex) {
                  card = cardImages[index];
                  stringCard = cardTitle[index];

                  return buildImage(cardImages, cardTitle, index);
                }),
                options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.39,
                  height: 280,
                  onPageChanged: (index, reason) =>
                      setState((() => activeIndex = index)),
                )),
          ),
          Container(
            // height: 10,

            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 12),
            child: Material(
              elevation: 2,
              child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 3,
                  effect: WormEffect(
                      dotColor: ColorAsset.whitecolor,
                      activeDotColor: ColorAsset.sliderColor,
                      dotWidth: 45,
                      dotHeight: 4,
                      spacing: 0,
                      radius: 4)),
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect _buildUiCard() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Image.asset(
          "assets/bedroom1.jpeg",
          fit: BoxFit.fitHeight,
          height: _deviceHeight * 0.35,
          width: _deviceWidth * 0.32,
        ));
  }

  Column _buildUiGreetings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(
                top: _deviceHeight * 0.23, bottom: _deviceHeight * 0.01),
            child: RichText(
              text: TextSpan(
                text: AppString.txtHello,
                style: TextStyle(
                    fontSize: _deviceHeight * 0.032,
                    color: ColorAsset.greycolor),
                children: <TextSpan>[
                  TextSpan(
                      text: AppString.txtDaniela,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            )),
        Text(AppString.txtWelcomeToYourSmartHome,
            style: TextStyle(
                color: ColorAsset.lightgreycolor, fontWeight: FontWeight.w500))
      ],
    );
  }

  Widget _buildUiTemperature() {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(top: _deviceHeight * 0.09),
            child: Text(
              AppString.txt25,
              style: TextStyle(
                  fontSize: _deviceHeight * 0.068,
                  color: ColorAsset.lightgreycolor),
            )),
        Container(
          margin: EdgeInsets.only(
              top: _deviceHeight * 0.04, left: _deviceWidth * 0.02),
          child: Text(
            '\u2103',
            style: TextStyle(
                fontSize: _deviceHeight * 0.03,
                color: ColorAsset.lightgreycolor),
          ),
        ),
      ],
    );
  }

  Widget buildImage(cardImages, cardTitle, int index) => Stack(
        children: [
          Container(
            // color: Colors.black,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  card,
                  fit: BoxFit.cover,
                  height: _deviceHeight * 0.8,
                  width: _deviceWidth * 0.4,
                )),
          ),
          Center(
            child: Text(
              stringCard,
              style: TextStyle(
                  color: ColorAsset.whitecolor,
                  fontSize: _deviceHeight * 0.019,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      );
}
