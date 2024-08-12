import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';
import 'package:urbanwear/feature/order&payment/screen/ordernow.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  List A = [
    {
      "image": Imageconst.nike3,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "text2": "L",
      "color": Colorconst.whiteConst
    },
    {
      "image": Imageconst.nike5,
      "text": "Trouser Shirt",
      "price": "₹ 599",
      "text2": "M",
      "color": Colorconst.blackCont
    },
    {
      "image": Imageconst.nike4,
      "text": "Stylesh pant",
      "price": "₹ 899",
      "text2": "M",
      "color": Colorconst.whiteConst
    },
    {
      "image": Imageconst.nike1,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "text2": "L",
      "color": Colorconst.redConst,
    },
  ];
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          // toolbarHeight: h * 0.12,
          centerTitle: true,
          title: Text(
            "Cart",
            style: TextStyle(
                fontSize: w * 0.06,
                fontWeight: FontWeight.w500,
                color: Colorconst.blackCont),
          ),

          elevation: 0,
          backgroundColor: Colorconst.whiteConst,
        ),
        body: Column(
          children: [
            ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    height: h * 0.56,
                    // decoration:  BoxDecoration(
                    //     gradient: LinearGradient(colors: [
                    //       Colorconst.lightpurpleConst,
                    //       Colorconst.whiteConst
                    //     ],
                    //         begin: Alignment.topCenter,
                    //         end: Alignment.bottomCenter)
                    // ),
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              // SizedBox(
                              //   height: h * 0.03,
                              // ),
                              Padding(
                                padding:  EdgeInsets.only(bottom: w*0.05,top: w*0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: h * 0.2,
                                      width: w * 0.9,
                                      decoration: BoxDecoration(
                                          color: Colorconst.whiteConst,
                                          borderRadius:
                                              BorderRadius.circular(w * 0.03),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colorconst.lightgreyConst,
                                                blurStyle: BlurStyle.outer,
                                                blurRadius: w*0.02,
                                                spreadRadius: w*0.01,
                                                offset: Offset(0, 4))
                                          ]),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: h * 0.2,
                                            width: w * 0.3,
                                            decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.04)),
                                            child: Image.asset(
                                              A[index]["image"],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            height: h * 0.18,
                                            // color: Colorconst.blueConst,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  A[index]["text"],
                                                  style: TextStyle(
                                                      fontSize: w * 0.03,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  A[index]["price"],
                                                  style: TextStyle(
                                                      fontSize: w * 0.035,
                                                      fontWeight: FontWeight.w600,
                                                      color:
                                                          Colorconst.greyConst),
                                                ),
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: w * 0.035,
                                                      backgroundColor:
                                                          Colorconst.whiteConst,
                                                      child: Text(
                                                        A[index]["text2"],
                                                        style: TextStyle(
                                                            fontSize: w * 0.035,
                                                            fontWeight:
                                                                FontWeight.w500),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: w * 0.03,
                                                    ),
                                                    CircleAvatar(
                                                        radius: w * 0.03,
                                                        backgroundColor: A[index]
                                                            ["color"]),
                                                  ],
                                                ),
                                                Container(
                                                  width: w * 0.2,
                                                  // color: Colorconst.blackCont,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          count <= 1
                                                              ? count = 1
                                                              : count--;
                                                          setState(() {});
                                                        },
                                                        child: CircleAvatar(
                                                          radius: w * 0.03,
                                                          backgroundColor:
                                                              Colorconst
                                                                  .lightgreyConst,
                                                          child: SvgPicture.asset(
                                                            Imageconst.arrowdown,
                                                            color: Colorconst
                                                                .blackCont,
                                                          ),
                                                        ),
                                                      ),
                                                      Text("$count"),
                                                      InkWell(
                                                        onTap: () {
                                                          count++;
                                                          setState(() {});
                                                        },
                                                        child: CircleAvatar(
                                                          radius: w * 0.03,
                                                          backgroundColor:
                                                              Colorconst
                                                                  .lightgreyConst,
                                                          child: SvgPicture.asset(
                                                            Imageconst.arrowup,
                                                            color: Colorconst
                                                                .blackCont,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.delete_outline_outlined,
                                            color: Colorconst.greyConst,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: h * 0.02,
                          );
                        },
                        itemCount: A.length),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                    child: Container(
                      height: h * 0.23,
                      width: w * 0.8,
                      // color: Colorconst.blueConst,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TOTAL: ",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.greyConst),
                              ),
                              Text(
                                "₹ 1220.1",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.greyConst),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping: ",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.greyConst),
                              ),
                              Text(
                                "0.0",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.greyConst),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colorconst.greyConst,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Grand Total: ",
                                style: TextStyle(
                                    fontSize: w * 0.05,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.blackCont),
                              ),
                              Text(
                                "₹ 1220.1",
                                style: TextStyle(
                                    fontSize: w * 0.05,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.blackCont),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Ordernowpage(),
                                  ));
                            },
                            child: Container(
                              height: h * 0.06,
                              width: w * 0.7,
                              decoration: BoxDecoration(
                                color: Colorconst.lightblackConst,
                                borderRadius: BorderRadius.circular(w * 0.1),
                              ),
                              child: Center(
                                  child: Text(
                                "Order now",
                                style: TextStyle(
                                    fontSize: w *0.045,
                                    fontWeight: FontWeight.w500,
                                    color: Colorconst.whiteConst),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
