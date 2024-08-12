import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/feature/home/screen/cartpage.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';

import '../../../const/imageconst.dart';
import '../../../main.dart';

class Addingcart extends StatefulWidget {
  const Addingcart({super.key});

  @override
  State<Addingcart> createState() => _AddingcartState();
}

class _AddingcartState extends State<Addingcart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colorconst.lightpurpleConst,
        appBar: AppBar(
          // toolbarHeight: h * 0.13,
       leading: InkWell(
           onTap: () {
             Navigator.pop(context);
           },
           child: Icon(Icons.arrow_back_ios_new)),

          elevation: 0,
          // backgroundColor: Colorconst.lightpurpleConst,
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: w*0.1),
          child: Column(
            children: [
              Container(
                // decoration:  BoxDecoration(
                //     gradient: LinearGradient(colors: [
                //       Colorconst.lightpurpleConst,
                //       Colorconst.whiteConst
                //     ],
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter)
                // ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        height: h * 0.4,
                        width: w * 0.7,
                        decoration: BoxDecoration(
                          // color: Colorconst.purpleConst,
                          borderRadius: BorderRadius.circular(w * 0.12),
                        ),
                        child: Image.asset(
                          Imageconst.nike1,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: h * 0.23,
                      width: w * 0.9,
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: h*.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sassy T Shirt",
                                style: TextStyle(
                                    fontSize: w * 0.05, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "₹ 999",
                                style: TextStyle(
                                    color: Colorconst.greyConst,
                                    fontSize: w * 0.05,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                    fontSize: w * 0.04, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: h * 0.045,
                                width: w * 0.45,
                                // color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colorconst.whiteConst,
                                      child: Text(
                                        "S",
                                        style: TextStyle(
                                            fontSize: w * 0.05,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colorconst.whiteConst,
                                      child: Text(
                                        "M",
                                        style: TextStyle(
                                            fontSize: w * 0.05,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colorconst.whiteConst,
                                      child: Text(
                                        "L",
                                        style: TextStyle(
                                            fontSize: w * 0.05,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colorconst.whiteConst,
                                      child: Text(
                                        "XL",
                                        style: TextStyle(
                                            fontSize: w * 0.05,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Text("Color",style: TextStyle(
                                  fontSize: w * 0.04, fontWeight: FontWeight.w500),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: h * 0.043,
                                width: w * 0.23,
                                // color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colorconst.blackCont,

                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colorconst.redConst
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                      child: Container(
                        height: h * 0.08,
                        width: w * 0.8,
                        decoration: BoxDecoration(
                          color: Colorconst.lightblackConst,
                          borderRadius: BorderRadius.circular(w * 0.05),
                        ),
                        child: Center(
                            child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: w * 0.05,
                              fontWeight: FontWeight.w500,
                              color: Colorconst.whiteConst),
                        )),
                      ),
                    )
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
