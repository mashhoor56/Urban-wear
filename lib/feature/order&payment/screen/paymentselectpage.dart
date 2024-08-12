import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/colorconst.dart';
import '../../../main.dart';

class Paymentselectpage extends StatefulWidget {
  const Paymentselectpage({super.key});

  @override
  State<Paymentselectpage> createState() => _PaymentselectpageState();
}

class _PaymentselectpageState extends State<Paymentselectpage> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: h * 0.12,
        centerTitle: true,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: h*0.3,
            // color:  Colorconst.redConst,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    height: h*0.07,
                    width: w*0.7,
                    decoration:  BoxDecoration(
                        // color: Colorconst.redConst,
                      borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(color: Colorconst.greyConst)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: w*0.05,right: w*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Google pay",style: TextStyle(
                            fontSize: w*0.04,
                          fontWeight: FontWeight.w500),),
                          Radio(
                            activeColor: Colorconst.greyConst,
                              value:"Google pay",
                              groupValue:selectedValue ,
                              onChanged:  (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: h*0.07,
                    width: w*0.7,
                    decoration:  BoxDecoration(
                        // color: Colorconst.redConst,
                      borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(color: Colorconst.greyConst)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: w*0.05,right: w*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Credit/Debit",style: TextStyle(
                              fontSize: w*0.04,
                              fontWeight: FontWeight.w500)),
                          Radio(
                            activeColor: Colorconst.greyConst,
                              value:"Credit/Debit",
                              groupValue:selectedValue ,
                              onChanged:  (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: h*0.07,
                    width: w*0.7,
                    decoration:  BoxDecoration(
                        // color: Colorconst.redConst,
                      borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(color: Colorconst.greyConst)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: w*0.05,right: w*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("COD",style: TextStyle(
                              fontSize: w*0.04,
                              fontWeight: FontWeight.w500)),
                          Radio(
                            activeColor: Colorconst.greyConst,
                              value:"COD",
                              groupValue:selectedValue ,
                              onChanged:  (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: h * 0.06,
            width: w * 0.7,
            decoration: BoxDecoration(
              color: Colorconst.lightblackConst,
              borderRadius: BorderRadius.circular(w * 0.1),
            ),
            child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: w * 0.045,
                      fontWeight: FontWeight.w500,
                      color: Colorconst.whiteConst),
                )),
          ),
        ],
      ),
    );
  }
}
