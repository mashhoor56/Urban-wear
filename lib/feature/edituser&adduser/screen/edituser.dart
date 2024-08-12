import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

import '../../../const/colorconst.dart';
import '../../../const/imageconst.dart';
import '../../../main.dart';

class Edituser extends StatefulWidget {
  const Edituser({super.key});

  @override
  State<Edituser> createState() => _EdituserState();
}

class _EdituserState extends State<Edituser> {
  File? file;
  pickimage(ImageSource source) async {
    var PickedFile =
    await ImagePicker.platform.getImageFromSource(source: source);
    file = File(PickedFile!.path);
    if (mounted) {
      file = File(PickedFile.path);
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconst.whiteConst,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                     file == null ? CircleAvatar(
                        radius: w*0.13,
                        backgroundColor: Colorconst.whiteConst,
                        child: CircleAvatar(
                          backgroundColor: Colorconst.lightgreyConst,
                            radius: w * 0.1,
                            child: Icon(CupertinoIcons.camera)),
                      ):
                      CircleAvatar(
                        radius: w*0.13,
                        backgroundColor: Colorconst.whiteConst,
                        child: CircleAvatar(
                          // backgroundColor: Colorconst.whiteConst,
                            radius: w * 0.1,
                            backgroundImage:FileImage(file!),
                        ),
                      ),
                      Positioned(
                        top: w*0.155,
                        left: w*0.175,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colorconst.whiteConst,
                              radius: w*0.03,
                              child: InkWell(onTap: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) {
                                    return CupertinoActionSheet(
                                      actions: [
                                        CupertinoActionSheetAction(
                                            onPressed: () async {
                                              await pickimage(ImageSource.gallery);
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Photo Gallery",
                                              style: TextStyle(color: Colors.blue),
                                            )),
                                        CupertinoActionSheetAction(
                                            onPressed: () {
                                              pickimage(ImageSource.camera);
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Camera",
                                              style: TextStyle(color: Colors.blue),
                                            )),
                                      ],
                                      cancelButton: CupertinoActionSheetAction(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          setState(() {});
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                                child: CircleAvatar(
                                  backgroundColor: Colorconst.blueConst,
                                  radius: w*0.025,
                                  child: Icon(Icons.add,size: w*0.05,color: Colorconst.whiteConst,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: h*0.3,
                // color: Colorconst.redConst,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:h*0.055,
                      width: w*0.9,
                      decoration: BoxDecoration(
                          color: Colorconst.whiteConst,
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            labelText: "Name",
                            labelStyle: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w*0.04
                            )
                        ),
                        textInputAction:TextInputAction.next,
                        keyboardType: TextInputType.name,
                        cursorColor: Colorconst.greyConst,
                      ),
                    ),
                    Container(
                      height:h*0.055,
                      width: w*0.9,
                      decoration: BoxDecoration(
                          color: Colorconst.whiteConst,
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            labelText: "email",
                            labelStyle: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w*0.04
                            )
                        ),
                        textInputAction:TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colorconst.greyConst,
                      ),
                    ),
                    Container(
                      height:h*0.055,
                      width: w*0.9,
                      decoration: BoxDecoration(
                          color: Colorconst.whiteConst,
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            labelText: "Phone number",
                            labelStyle: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w*0.04
                            )
                        ),
                        textInputAction:TextInputAction.next,
                        keyboardType: TextInputType.number,
                        cursorColor: Colorconst.greyConst,
                      ),
                    ),
                    Container(
                      height:h*0.055,
                      width: w*0.9,
                      decoration: BoxDecoration(
                          color: Colorconst.whiteConst,
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colorconst.greyConst
                                ),
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            labelText: "Place",
                            labelStyle: TextStyle(
                                color: Colorconst.lightgreyConst,
                                fontSize: w*0.04
                            )
                        ),
                        textInputAction:TextInputAction.next,
                        keyboardType: TextInputType.name,
                        cursorColor: Colorconst.greyConst,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h*0.02,),
              Container(
                height: h * 0.06,
                width: w * 0.4,
                decoration: BoxDecoration(
                  color: Colorconst.lightblackConst,
                  borderRadius: BorderRadius.circular(w * 0.1),
                ),
                child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.w500,
                          color: Colorconst.whiteConst),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
