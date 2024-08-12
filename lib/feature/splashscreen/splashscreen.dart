import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/feature/auth/screen/loginpage.dart';

import '../../const/imageconst.dart';
import '../../main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            CupertinoPageRoute(
              builder: (context) => Loginpage(),
            ),
            (route) => false));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.lightblackConst,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Imageconst.newlogo))
        ],
      )
    );
  }
}
