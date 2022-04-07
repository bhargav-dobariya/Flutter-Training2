import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_login_app/Resources/app_asset.dart';
import 'package:google_login_app/Resources/string_asset.dart';
import 'package:google_login_app/Screens/Twitter_Confirm.dart';
import 'package:google_login_app/Screens/login_confirm_fb.dart';
import 'package:google_login_app/Widgets/login_widget.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:twitter_login/twitter_login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future<UserCredential>_fbLogin(BuildContext context) async {
  //   final LoginResult result = await FacebookAuth.instance.login();
  //   if (result.status == LoginStatus.success) {
  //     // you are logged
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => FbLoginConfirm()));
  //     final AccessToken accessToken = result.accessToken!;
  //   } else {
  //     print(result.status);
  //     print(result.message);
  //   }
  // }
  // Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => FbLoginConfirm()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: ColorAsset.foloraWhiteButton,
              onPrimary: ColorAsset.purpleButton,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(AppString.txtLoginWithGoogle),
            onPressed: () {
              LoginWidget(context);
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: ColorAsset.blueColor,
              onPrimary: ColorAsset.whitecolor,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(AppString.txtLoginWithFb),
            onPressed: () {
              signInWithFacebook(context);
            },
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorAsset.blueColor,
                onPrimary: ColorAsset.whitecolor,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text("Twitter Login"),
              onPressed: () async {
                signInWithTwitter(context);
              }),
        ],
      )),
    ));
  }
}

void signInWithTwitter(BuildContext context) async {
  print("signInWithTwitter");
  final twitterLogin = TwitterLogin(
    apiKey: 'I2WqcQepBe6ULP6KPIhhkBZ8X',
    apiSecretKey: 'q9CCjFwos1vIiCeO5WtHhD8vwe8xtuTY4t6JLBJc3Xe8TR2Paq',
    redirectURI: 'flutter-twitter-app://',
  );
  print("signInWithTwitter - after TwitterLogin");

  try {
    final value = await twitterLogin.login();
    print("build--.......");
    print(value.authToken);
    print(value.authTokenSecret);
    print(value.status);
    print(value.errorMessage);
    print(value.user);
    print("value");

    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: value.authToken!,
      secret: value.authTokenSecret!,
    );
    await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => TwitterLoginConfirm()));
  } catch (errr) {
    print(errr.toString());
    print("errr");
  }

  // await twitterLogin.login().then((value) async {
  //   print("build--.......");
  //   print(value.authToken);
  //   print(value.authTokenSecret);
  //   print(value.status);
  //   print(value.errorMessage);
  //   print(value.user);
  //   print("value");

  //   final twitterAuthCredential = TwitterAuthProvider.credential(
  //     accessToken: value.authToken!,
  //     secret: value.authTokenSecret!,
  //   );
  //   await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);

  //   Navigator.pushReplacement(context,
  //       MaterialPageRoute(builder: (context) => TwitterLoginConfirm()));
  // }).catchError((error) {
  //   print(error.toString());
  //   print("errorr");
  // });
}

Future<UserCredential> signInWithFacebook(BuildContext context) async {
  // Trigger the sign-in flow
  final LoginResult result =
      await FacebookAuth.instance.login(permissions: ['email']);
  if (result.status == LoginStatus.success) {
    final userData = await FacebookAuth.instance.getUserData();

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => FbLoginConfirm()));
  } else {
    print(result.message);
  }

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(result.accessToken!.token);
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => FbLoginConfirm()));
  // } catch (e) {
  //   print(e);
  // }

  // Once signed in, return the UserCredential
}
