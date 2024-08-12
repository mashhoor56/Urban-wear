import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urbanwear/const/imageconst.dart';
import 'package:urbanwear/feature/order&payment/screen/paymentselectpage.dart';

import '../../../const/colorconst.dart';
import '../../../main.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.whiteConst,
      appBar: AppBar(
        // toolbarHeight: h * 0.12,
        centerTitle: true,
        title: Text(
          "Payment",
          style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.w500,color: Colorconst.blackCont),
        ),
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
          child: Icon(
              Icons.arrow_back_ios_new
          ),
        ),
        elevation: 0,
        backgroundColor: Colorconst.whiteConst,
      ),
      body: Padding(
        padding:  EdgeInsets.only(right: w*0.04,left: w*0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: h*0.1,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Delivery method",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: w*0.06
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("+91 9544095371",style: TextStyle(
                        fontSize: w*0.035
                      ),),
                      Text("Change",style: TextStyle(
                        color: Colorconst.redConst,
                          fontSize: w*0.035
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: h*0.2,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Payment", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: w*0.06
                      ),)
                    ],
                  ),
                  Container(
                    width: w*0.85,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: h*0.11,
                            width: w*0.17,
                            color: Colorconst.whiteConst,
                            child: SvgPicture.asset(Imageconst.add)),
                        Container(
                            height: h*0.1,
                            width: w*0.2,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                border: Border.all(color: Colorconst.greyConst ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: h*0.07,
                                    width: w*0.13,
                                    // color: Colors.grey,
                                    child: SvgPicture.asset(Imageconst.mastercard)),
                              ],
                            )),
                        Container(
                            height: h*0.1,
                            width: w*0.2,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                // border: Border.all(color: Colorconst.redConst),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: h*0.07,
                                    width: w*0.13,
                                    // color: Colors.grey,
                                    child: SvgPicture.asset(Imageconst.paypal)),
                              ],
                            )),
                        Container(
                            height: h*0.1,
                            width: w*0.2,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                // border: Border.all(color: Colorconst.redConst),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: h*0.07,
                                    width: w*0.13,
                                    // color: Colors.grey,
                                    child: SvgPicture.asset(Imageconst.stripe)),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.35,
              // width: w * 0.9,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentselectpage(),));
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
                            "Confirm payment",
                            style: TextStyle(
                                fontSize: w * 0.045,
                                fontWeight: FontWeight.w500,
                                color: Colorconst.whiteConst),
                          )),
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
