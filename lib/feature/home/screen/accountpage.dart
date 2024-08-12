import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';
import 'package:urbanwear/feature/order&payment/screen/orderspage.dart';
import 'package:urbanwear/feature/notification/screen/notificationpage.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          // toolbarHeight: h * 0.12,
          centerTitle: true,
          title: Text(
            "Account",
            style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.w500,color: Colorconst.blackCont),
          ),

          elevation: 0,
          backgroundColor: Colorconst.whiteConst,
        ),
        body: Column(
          children: [
            Container(
              height: h*0.1,
              // color: Colorconst.blueConst,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Orderspage(),));
                  },
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                        // color: Colorconst.greyConst,
                        border: Border.all(
                          color: Colorconst.greyConst
                        ),
                        borderRadius: BorderRadius.circular(w * 0.02),
                      ),
                      child: Center(
                          child: Text(
                            "Orders",
                            style: TextStyle(
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.w500,
                                color: Colorconst.greyConst),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: w*0.03),
              child: Column(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Editprofilepage(),));
                  },
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.person),
                            SizedBox(width: w*0.02,),
                            Text("Edit profile",style: TextStyle(
                                fontSize: w*0.04,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h*0.02,
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notificationpage(),));
                  },
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.notifications_active_outlined),
                            SizedBox(width: w*0.02,),
                            Text("Notification",style: TextStyle(
                                fontSize: w*0.04,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
