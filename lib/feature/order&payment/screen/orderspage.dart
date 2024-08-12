import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Orderspage extends StatefulWidget {
  const Orderspage({super.key});

  @override
  State<Orderspage> createState() => _OrderspageState();
}

class _OrderspageState extends State<Orderspage> {
  List A=[
    {
      "image": Imageconst.nike1,
      "text": "Stylesh pant",
      "rating":''
    },
    {
      "image": Imageconst.nike4,
      "text": "Stylesh pant",
      "rating":''
    },
    {
      "image": Imageconst.nike4,
      "text": "Stylesh pant",
      "rating":''
    },
    {
      "image": Imageconst.nike4,
      "text": "Stylesh pant",
      "rating":''
    },
  ];
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
        appBar: AppBar(
          // toolbarHeight: h * 0.12,
          centerTitle: true,
          title: Text(
            "Add your review",
            style: TextStyle(
                fontSize: w * 0.06,
                fontWeight: FontWeight.w500,
                color: Colorconst.blackCont),
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
        body: Column(
          children: [
            Container(
              height: h*0.88 ,
              // color: Colorconst.redConst,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: w*0.04,right: w*0.04,top: w*0.04,bottom: w*0.05),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colorconst.lightgreyConst,
                                   offset: Offset(0, 4),
                                  spreadRadius: w*0.01,
                                blurRadius: w*0.02,
                                blurStyle: BlurStyle.outer),
                              ],
                              borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: ListTile(
                              minTileHeight: h*0.2,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w*0.03)),
                              leading: Container(
                                height: h*0.1,
                                width: w*0.15,
                                decoration: BoxDecoration(
                                    // color: Colorconst.redConst,
                                    borderRadius: BorderRadius.circular(w*0.02),
                                  image: DecorationImage(image: AssetImage(A[index]['image']),fit: BoxFit.fill)
                                ),
                                // child: Image.asset(A[index]['image'],fit: BoxFit.fill,),
                              ),
                              title:Container(
                                  height: h*0.14,
                                  // color: Colors.blue,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(A[index]["text"],style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                      fontSize: w*0.045),),
                                      Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Rating: $_rating',
                                              style:  TextStyle(fontSize: w*0.03,fontWeight: FontWeight.w500),
                                            ),
                                            AnimatedRatingStars(
                                              initialRating: 0.0,
                                              onChanged: (rating) {
                                                setState(() {
                                                  _rating = rating;
                                                });
                                              },
                                              displayRatingValue: true, // Display the rating value
                                              interactiveTooltips: true, // Allow toggling half-star state
                                              customFilledIcon: Icons.star,
                                              customHalfFilledIcon: Icons.star_half,
                                              customEmptyIcon: Icons.star_border,
                                              starSize:w*0.05,
                                              animationDuration: const Duration(milliseconds: 500),
                                              animationCurve: Curves.easeInOut,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),),

                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: h*0.01,);
                  },
                  itemCount: A.length),
            ),

          ],
        ),
      ),
    );
  }
}
