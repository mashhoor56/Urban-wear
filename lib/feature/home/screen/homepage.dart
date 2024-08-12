import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/const/imageconst.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';

import '../../../main.dart';
import 'addingCart.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int B = -1;
  List A = [
    {
      "image": Imageconst.nike1,
      "text": "Nike Sportswear",
      "price": "₹ 499",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike2,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike3,
      "text": "Classic Fit Shirt",
      "price": "₹ 699",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike4,
      "text": "Sassy T Shirt",
      "price": "₹ 999",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike5,
      "text": "Stylesh pant",
      "price": "₹ 899",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike1,
      "text": "Trouser Shirt",
      "price": "₹ 599",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike2,
      "text": "COMBO PANT",
      "price": "₹ 499",
      "image2": Imageconst.greyheart,
    },
    {
      "image": Imageconst.nike3,
      "text": "CALASICS SHIRT",
      "price": "₹ 799",
      "image2": Imageconst.greyheart,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                // decoration: BoxDecoration(
                //     gradient: LinearGradient(colors: [
                //   Colorconst.lightpurpleConst,
                //   Colorconst.whiteConst
                // ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: w * 0.04, top: w * 0.07, right: w * 0.06),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Editprofilepage(),
                                      ));
                                },
                                child: CircleAvatar(
                                    // backgroundColor: Colorconst.whiteConst,
                                    radius: w * 0.07,
                                    child: Image.asset(Imageconst.profile2)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Match Your Style",
                                style: TextStyle(
                                    color: Colorconst.blackCont,
                                    fontSize: w * 0.06,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: w * 0.1,
                          right: w * 0.1,
                          top: w * 0.02,
                          bottom: w * 0.04),
                      child: Column(
                        children: [
                          Container(
                            height: h * 0.05,
                            width: w * 0.8,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.06)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    CupertinoIcons.search,
                                    color: Colorconst.greyConst,
                                    size: w * 0.06,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(w * 0.06),
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst)),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(w * 0.06),
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst)),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      fontSize: w * 0.033,
                                      color: Colorconst.greyConst)),
                              cursorHeight: w * 0.07,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h * 0.05,
                                width: w * 0.35,
                                decoration: BoxDecoration(
                                    color: Colorconst.lightblackConst,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.05)),
                                child: Center(
                                  child: Text(
                                    "Trending Now",
                                    style: TextStyle(
                                        color: Colorconst.whiteConst,
                                        fontSize: w * 0.035),
                                  ),
                                ),
                              ),
                              Container(
                                height: h * 0.05,
                                width: w * 0.15,
                                decoration: BoxDecoration(
                                    color: Colorconst.lightgreyConst,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.05)),
                                child: Center(
                                    child: Text(
                                  "All",
                                  style: TextStyle(
                                      color: Colorconst.greyConst,
                                      fontSize: w * 0.035),
                                )),
                              ),
                              Container(
                                height: h * 0.05,
                                width: w * 0.2,
                                decoration: BoxDecoration(
                                    color: Colorconst.lightgreyConst,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.05)),
                                child: Center(
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colorconst.greyConst,
                                        fontSize: w * 0.035),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: h * 0.56,
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: A.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // mainAxisSpacing: w*0.05,
                                  // crossAxisSpacing: w*0.05,
                                  childAspectRatio: 0.9),
                          itemBuilder: (context, index) {
                            return Container(
                              height: h * 0.25,
                              width: w * 0.5,
                              // color:Colors.green,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Addingcart(),
                                              ));
                                        },
                                        child: Container(
                                          height: h * 0.2,
                                          width: w * 0.33,
                                          decoration: BoxDecoration(
                                              // border: Border.all(color: Colorconst.lightgreyConst),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      A[index]["image"]),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      w * 0.04)),
                                        ),
                                      ),
                                      Positioned(
                                        left: w * 0.24,
                                        top: w * 0.02,
                                        child: CircleAvatar(
                                          radius: w * 0.035,
                                          backgroundColor:
                                              Colorconst.whiteConst,
                                          child: SvgPicture.asset(
                                            A[index]["image2"],
                                            width: w * 0.05,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: w * 0.02,
                                      ),
                                      Text(
                                        A[index]["text"],
                                        style: TextStyle(
                                            fontSize: w * 0.025,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        A[index]["price"],
                                        style: TextStyle(
                                            color: Colorconst.greyConst,
                                            fontSize: w * 0.03,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ))
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
