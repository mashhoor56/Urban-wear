import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/const/imageconst.dart';
import 'package:urbanwear/feature/auth/screen/signuppage.dart';
import 'package:urbanwear/feature/navigation/screen/bottomnavigationbar.dart';

import '../../../main.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final auth = await FirebaseAuth.instance.signInWithCredential(credential);

    User? userDetails = auth.user;
    var UserName = userDetails!.displayName;
    var UserEmail = userDetails.email;
    var Userimage = userDetails.photoURL;

    var userlist = await FirebaseFirestore.instance
        .collection("users")
        .where("email", isEqualTo: UserEmail)
        .get();
    if (userlist.docs.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Signuppage(),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Bottompage(),
          ));
    }
  }

  @override
  // void initState() {
  // test();
  //   super.initState();
  // }
  // test(){
  //   FirebaseFirestore.instance.collection('test').add({'ss':'hh'});
  // }
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
                  "Login",
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
                      labelText: "password",
                      labelStyle: TextStyle(color: Colorconst.greyConst),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorconst.greyConst)),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colorconst.lightblackConst, fontSize: w * 0.03),
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
                            "Login",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signuppage(),
                            ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w * 0.03),
                          ),
                          SizedBox(
                            height: h * 0.04,
                          ),
                          Text(
                            "Signup",
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
                    SizedBox(
                      height: h * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        signInWithGoogle();

                      },
                      child: CircleAvatar(
                        backgroundColor: Colorconst.whiteConst,
                        child: SvgPicture.asset(Imageconst.google),
                      ),
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
