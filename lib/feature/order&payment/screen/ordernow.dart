import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanwear/feature/order&payment/screen/paymentpage.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Ordernowpage extends StatefulWidget {
  const Ordernowpage({super.key});

  @override
  State<Ordernowpage> createState() => _OrdernowpageState();
}

class _OrdernowpageState extends State<Ordernowpage> {
  List A = [
    {
      "image": Imageconst.nike4,
      "text": "Stylesh pant",
      "Quantity": "Qty : 2",
      "image2": Imageconst.heart,
    },
    {
      "image": Imageconst.nike5,
      "text": "Trouser Shirt",
      "Quantity": "Qty : 1",
      "image2": Imageconst.heart,
    },
    {
      "image": Imageconst.nike3,
      "text": "COMBO PANT",
      "Quantity": "Qty : 2",
      "image2": Imageconst.heart,
    },
    {
      "image": Imageconst.nike2,
      "text": "CALASICS SHIRT",
      "Quantity": "Qty : 1",
      "image2": Imageconst.heart,
    },
    {
      "image": Imageconst.nike1,
      "text": "Sassy T Shirt",
      "Quantity": "Qty : 1",
      "image2": Imageconst.heart,
    },
  ];
  List drop = [
    "Kerala",
    "Tamil Nadu",
    "Karnataka",
  ];
  List<DropdownMenuItem> item = [
    DropdownMenuItem(value: "Kerala", child:  Text("Kerala")),
    DropdownMenuItem(value: "Tamil Nadu", child: Text("Tamil Nadu")),
    DropdownMenuItem(value: "karnataka", child: Text("Karnataka"))
  ];
  String? DropDownvalue;
  TextEditingController namecontroller= TextEditingController();
  TextEditingController statecontroller= TextEditingController();
  TextEditingController flatcontroller= TextEditingController();
  TextEditingController streetcontroller= TextEditingController();
  TextEditingController landmarkcontroller= TextEditingController();
  TextEditingController pincodecontroller= TextEditingController();
  TextEditingController citycontroller= TextEditingController();
  TextEditingController phonecontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Delivery to",
                style: TextStyle(
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.w500,
                    color: Colorconst.lightblackConst),
              ),
              Text(
                "Location",
                style: TextStyle(
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colorconst.lightgreyConst
                ),
              )
            ],
          ),
          backgroundColor: Colorconst.whiteConst,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: SingleChildScrollView(
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
                  children: [
                    Container(
                      height: h * 0.25,
                      width: w,
                      // color: Colorconst.redConst,
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: h * 0.15,
                                      width: w * 0.25,
                                      decoration: BoxDecoration(
                                          // color: Colorconst.blueConst,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(A[index]["image"]),
                                              fit: BoxFit.fill),
                                          borderRadius:
                                              BorderRadius.circular(w * 0.05)),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      A[index]["text"],
                                      style: TextStyle(
                                          fontSize: w * 0.03,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      A[index]["Quantity"],
                                      style: TextStyle(
                                          fontSize: w * 0.025,
                                          fontWeight: FontWeight.w500,
                                          color: Colorconst.greyConst),
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: w * 0.03,
                            );
                          },
                          itemCount: A.length),
                    ),
                    Container(
                      height: h * 0.6,
                      // color: Colorconst.redConst,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: namecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                              height: h * 0.055,
                              width: w * 0.9,
                              decoration: BoxDecoration(
                                  color: Colorconst.whiteConst,
                                  border:
                                      Border.all(color: Colorconst.greyConst),
                                  borderRadius:
                                      BorderRadius.circular(w * 0.03)),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  DropdownButton(
                                    underline: SizedBox(),
                                    value: DropDownvalue,
                                    items: drop.map((e) {
                                      return DropdownMenuItem(
                                          value: e, child: Text(e));
                                    }).toList(),
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: w * 0.55),
                                      child: Icon(Icons.arrow_drop_down),
                                    ),
                                    style:
                                        TextStyle(color: Colorconst.blackCont),
                                    hint: Padding(
                                      padding: EdgeInsets.only(
                                        left: w * 0.03,
                                      ),
                                      child: Text(
                                        "State",
                                        style: TextStyle(
                                            color: Colorconst.lightgreyConst,
                                            fontSize: w * 0.04),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      DropDownvalue = value.toString();
                                      setState(() {});
                                    },
                                  ),
                                ],
                              )),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: flatcontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Flat,House no,Building,Apartment",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: streetcontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Area,Street,Sector,Village",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: landmarkcontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Landmark",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: pincodecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Pincode",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: citycontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Town/City",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          Container(
                            height: h * 0.055,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Colorconst.whiteConst,
                                borderRadius: BorderRadius.circular(w * 0.03)),
                            child: TextFormField(
                              controller: phonecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colorconst.greyConst),
                                      borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                  labelText: "Phone number",
                                  labelStyle: TextStyle(
                                      color: Colorconst.lightgreyConst,
                                      fontSize: w * 0.04)),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              cursorColor: Colorconst.greyConst,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Paymentpage(),
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
                                "Next",
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
            ],
          ),
        ),
      ),
    );
  }
}
