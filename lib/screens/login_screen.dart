import 'package:alert_dialog/resources/string_asset.dart';
import 'package:alert_dialog/screens/bg_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//flutter@gmail.com
//password:123456
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 63, 99),
          title: Text(StringAssets.txtloginpage),
          centerTitle: true,
          leading: const Icon(Icons.account_tree_rounded),
          actions: const [
            Icon(Icons.android_rounded),
          ],
        ),
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return LoginScreenWidget();
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({Key? key}) : super(key: key);

  @override
  State<LoginScreenWidget> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreenWidget> {
  //Login Function
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User Found For that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    //textFieldController
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Stack(
      fit: StackFit.expand,
      children: [
        const BgImage(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Card(
              child: Column(
                children: [
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            hintText: StringAssets.txtenterusername,
                            labelText: StringAssets.txtusername),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: StringAssets.txtenterpassword,
                            labelText: StringAssets.txtpassword),
                      )
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        User? user = await loginUsingEmailPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                            context: context);
                        print(user);
                        if (user != null) {
                          Navigator.pushNamed(context, "/home");
                        }
                      },
                      child: Text(StringAssets.txtsubmit),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 25, 59, 52),
                      ))
                ],
              ),
            )),
          ),
        ),
      ],
    );
  }
}
