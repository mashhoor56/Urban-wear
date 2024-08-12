import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanwear/const/colorconst.dart';
import 'package:urbanwear/feature/home/screen/accountpage.dart';
import 'package:urbanwear/feature/home/screen/favoritepage.dart';
import 'package:urbanwear/feature/home/screen/homepage.dart';
import 'package:urbanwear/feature/home/screen/editprofilepage.dart';

import '../../home/screen/cartpage.dart';

class Bottompage extends StatefulWidget {
  const Bottompage({super.key});

  @override
  State<Bottompage> createState() =>
      _BottompageState();
}

class _BottompageState extends State<Bottompage> {
  List page = [
    Homepage(),
   Favoritepage(),
    Cartpage(),
   Accountpage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex=value;
          setState(() {

          });
        },
          items: [
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
          Icons.home,
          color: selectedIndex==0 ? Colorconst.lightblackConst:Colorconst.lightgreyConst
        )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
          CupertinoIcons.heart_fill,
                color: selectedIndex==1 ? Colorconst.lightblackConst:Colorconst.lightgreyConst
        )),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            CupertinoIcons.cart_fill,
              color: selectedIndex==2 ? Colorconst.lightblackConst:Colorconst.lightgreyConst
          ),
        ),
        BottomNavigationBarItem(
          label: "",
            icon: Icon(
          Icons.person,
                color: selectedIndex==3 ? Colorconst.lightblackConst:Colorconst.lightgreyConst
        ))
      ]),
      body: page[selectedIndex],
    );
  }
}
