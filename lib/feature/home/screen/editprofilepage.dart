import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/const/imageconst.dart';
import 'package:urbanwear/feature/edituser&adduser/screen/edituser.dart';

import '../../../main.dart';

class Editprofilepage extends StatefulWidget {
  const Editprofilepage({super.key});

  @override
  State<Editprofilepage> createState() => _EditprofilepageState();
}

class _EditprofilepageState extends State<Editprofilepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          backgroundColor: Colorconst.whiteConst,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: w * 0.05,
                  right: w * 0.05,
                ),
                child: Container(
                  height: h * 0.4,
                  // color: Colorconst.redConst,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: w * 0.13,
                            backgroundColor: Colorconst.whiteConst,
                            child: CircleAvatar(
                                // backgroundColor: Colorconst.whiteConst,
                                radius: w * 0.1,
                                child: Image.asset(
                                  Imageconst.profile2,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mashhoor",
                            style: TextStyle(
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Divider(
                        color: Colorconst.greyConst,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "mhdmashhoor56@gmail.com",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "+91 123456789",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.location_solid),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Nilambur",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: h * 0.1,
                // color: Colorconst.blueConst,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Edituser(),
                            ));
                      },
                      child: Container(
                        height: h * 0.05,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                          color: Colorconst.whiteConst,
                          border: Border.all(color: Colorconst.greyConst),
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                        child: Center(
                            child: Text(
                          "Change Details",
                          style: TextStyle(
                              fontSize: w * 0.035,
                              fontWeight: FontWeight.w500,
                              color: Colorconst.greyConst),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
