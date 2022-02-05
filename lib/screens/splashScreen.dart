import 'dart:async';

import 'package:kelompok8_groceryfood/Halaman/Page_Splashscreen.dart';
import 'package:kelompok8_groceryfood/Page_Dashboard.dart';
import 'package:kelompok8_groceryfood/main.dart';
import 'package:kelompok8_groceryfood/screens/loginscreen.dart';

import '../landingScreen.dart';

import '../utils/helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(SplashscreenPage.routename);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('img/images/animasi/background.png',
                  fit: BoxFit.fill),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'img/images/animasi/grocery.png',
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
