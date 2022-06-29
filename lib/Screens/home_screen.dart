import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _pin1 = TextEditingController();
  final TextEditingController _pin2 = TextEditingController();
  final TextEditingController _pin3 = TextEditingController();
  final TextEditingController _pin4 = TextEditingController();

  late double _deviceHeight;
  late double _deviceWidth;
  late String token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _bgUi(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _logoUi(),
                _textHeading(),
                _otpField(),

                //resend OTP butoon
                InkWell(
                  hoverColor: AppColor.drawerColor,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: _deviceWidth * 0.39, top: _deviceHeight * 0.08),
                    width: _deviceWidth * 0.4,
                    height: _deviceHeight * 0.06,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColor.cyanColor,
                            AppColor.blueColor,
                          ],
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    alignment: Alignment.center,
                    child: Text(
                      AppString.txtSubmit,
                      style: TextStyle(
                        fontSize: 19,
                        color: AppColor.whitecolor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _textHeading() {
    return Container(
        margin: EdgeInsets.only(
            top: _deviceHeight * 0.05, bottom: _deviceHeight * 0.07),
        child: Text(
          AppString.txtEnterYourOtpHere,
          style: TextStyle(
              color: AppColor.drawerColor,
              fontSize: _deviceHeight * 0.028,
              fontWeight: FontWeight.w600),
        ));
  }

  Widget _logoUi() {
    return Container(
      margin: EdgeInsets.only(top: _deviceHeight * 0.2),
      child: Image.asset(
        "assets/Logo3.png",
        height: _deviceHeight * 0.2,
      ),
    );
  }

  Widget _bgUi() {
    return SizedBox(
      height: _deviceHeight,
      width: _deviceWidth,
      child: Image.asset(
        "assets/bg_image.png",
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _otpField() {
    return Form(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor2,
                  border: Border.all(
                    color: AppColor.blueColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: _deviceHeight * 0.075,
              width: _deviceWidth * 0.14,
              child: TextFormField(
                controller: _pin1,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "0",
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor2,
                  border: Border.all(
                    color: AppColor.blueColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: _deviceHeight * 0.075,
              width: _deviceWidth * 0.14,
              child: TextFormField(
                controller: _pin1,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "0"),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor2,
                  border: Border.all(
                    color: AppColor.blueColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: _deviceHeight * 0.075,
              width: _deviceWidth * 0.14,
              child: TextFormField(
                controller: _pin2,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "0"),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor2,
                  border: Border.all(
                    color: AppColor.blueColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: _deviceHeight * 0.075,
              width: _deviceWidth * 0.14,
              child: TextFormField(
                controller: _pin3,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "0"),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightgreycolor2,
                  border: Border.all(
                    color: AppColor.blueColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: _deviceHeight * 0.075,
              width: _deviceWidth * 0.14,
              child: TextFormField(
                controller: _pin4,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "0"),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
