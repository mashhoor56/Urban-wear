import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  List A = [
    {
      "image": Imageconst.nike1,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "text2": "L",
      "color": Colorconst.redConst,
    },
    {
      "image": Imageconst.nike2,
      "text": "Trouser Shirt",
      "price": "₹ 599",
      "text2": "M",
      "color": Colorconst.blackCont,
    },
    {
      "image": Imageconst.nike3,
      "text": "Stylesh pant",
      "price": "₹ 899",
      "text2": "M",
      "color": Colorconst.whiteConst,
    },
    {
      "image": Imageconst.nike1,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "text2": "L",
      "color": Colorconst.redConst,
    },
  ];
  int count = 0;
  // @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          // toolbarHeight: h * 0.12,
          centerTitle: true,
          title: Text(
            "Favorites",
            style: TextStyle(
                fontSize: w * 0.06,
                fontWeight: FontWeight.w500,
                color: Colorconst.blackCont),
          ),

          elevation: 0,
          backgroundColor: Colorconst.whiteConst,
        ),
        body: Container(
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(top: w*0.02,bottom: w*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: h * 0.2,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colorconst.lightgreyConst,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: w*0.02,
                                      spreadRadius: w*0.01,
                                      offset: Offset(0, 4))
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: h * 0.2,
                                  width: w * 0.3,
                                  decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(w * 0.04)),
                                  child: Image.asset(
                                    A[index]["image"],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  height: h * 0.18,
                                  // color: Colorconst.blueConst,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        A[index]["text"],
                                        style: TextStyle(
                                            fontSize: w * 0.03,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        A[index]["price"],
                                        style: TextStyle(
                                            fontSize: w * 0.035,
                                            fontWeight: FontWeight.w600,
                                            color: Colorconst.greyConst),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            width: w * 0.03,
                                          ),
                                          CircleAvatar(
                                              radius: w * 0.03,
                                              backgroundColor: A[index]["color"]),
                                        ],
                                      ),
                                      Container(
                                        width: w * 0.2,
                                        // color: Colorconst.blackCont,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                count <= 0 ? count = 0 : count--;
                                                setState(() {});
                                              },
                                              child: CircleAvatar(
                                                radius: w * 0.03,
                                                backgroundColor:
                                                    Colorconst.lightgreyConst,
                                                child: SvgPicture.asset(
                                                  Imageconst.arrowdown,
                                                  color: Colorconst.blackCont,
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
                                                    Colorconst.lightgreyConst,
                                                child: SvgPicture.asset(
                                                  Imageconst.arrowup,
                                                  color: Colorconst.blackCont,
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
                                  Icons.favorite,
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
                return SizedBox(height: h * 0.02);
              },
              itemCount: A.length),
        ),
      ),
    );
  }
}
