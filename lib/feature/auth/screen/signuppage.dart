import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urbanwear/feature/home/screen/homepage.dart';
import 'package:urbanwear/feature/navigation/screen/bottomnavigationbar.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colorconst.lightblackConst,
        body: Center(
          child: Container(
            height: h * 0.65,
            width: w * 0.87,
            decoration: BoxDecoration(
                color: Colorconst.whiteConst,
                borderRadius: BorderRadius.circular(w * 0.05)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: w * 0.06,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: w * 0.75,
                  height: h * 0.07,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colorconst.greyConst),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: w * 0.75,
                  height: h * 0.07,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "create password",
                      labelStyle: TextStyle(color: Colorconst.greyConst),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: w * 0.75,
                  height: h * 0.07,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                      labelStyle: TextStyle(color: Colorconst.greyConst),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottompage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Container(
                        height: h * 0.06,
                        width: w * 0.3,
                        decoration: BoxDecoration(
                            color: Colorconst.lightblackConst,
                            borderRadius: BorderRadius.circular(w * 0.06)),
                        child: Center(
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: Colorconst.whiteConst,
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w * 0.03),
                          ),
                          SizedBox(
                            height: h * 0.04,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colorconst.lightblackConst,
                                fontSize: w * 0.03),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                              endIndent: w * 0.03,
                              indent: w * 0.03,
                              color: Colorconst.lightgreyConst,
                            )),
                        Text(
                          "Or",
                          style: TextStyle(
                              color: Colorconst.greyConst, fontSize: w * 0.05),
                        ),
                        Expanded(
                            child: Divider(
                              endIndent: w * 0.03,
                              indent: w * 0.03,
                              color: Colorconst.lightgreyConst,
                            ))
                      ],
                    ),
                    SizedBox(height: h*0.01,),
                    CircleAvatar(
                      backgroundColor: Colorconst.whiteConst,
                      child: SvgPicture.asset(Imageconst.google),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
