import 'dart:async';
import 'package:ayur_medi_care/Screens/Auth/Login.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreen extends StatefulWidget {
  splashScreen({Key key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

int logged;

class _splashScreenState extends State<splashScreen>
    with TickerProviderStateMixin {
  void initState() {
    getdata();
    super.initState();
  }

  getdata() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();

    var user_login = localStorage.getInt('login');
    print(user_login);
    setState(() {
      logged = user_login;
    });

    // if (user_login == 1) {
    //   Future.delayed(const Duration(seconds: 5), () {
    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(builder: (context) => Navbar()),
    //         (route) => false);
    //   });
    // } else {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Login()), (route) => false);
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/authback.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "Assets/Images/logo.png",
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                  color: green, fontSize: 32, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
