import 'dart:io';

import 'package:ayur_medi_care/Screens/Tharushi/AyurvedicResuts.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AyurvedicTakephoto extends StatefulWidget {
  AyurvedicTakephoto({Key key}) : super(key: key);

  @override
  State<AyurvedicTakephoto> createState() => _AyurvedicTakephotoState();
}

class _AyurvedicTakephotoState extends State<AyurvedicTakephoto> {
  File imageFile;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,
        title: const Text(
          "AyurMediCare",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("Assets/Images/plant3.png"),
                    fit: BoxFit.fitWidth)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Upload your plant leave image",
                      style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        _getFromCamera();
                      },
                      child: imageFile == null
                          ? Container(
                              height: 200,
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: green.withOpacity(0.1),
                                  border: Border.all(
                                    color: green,
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.camera_alt,
                                    color: green,
                                  ),
                                  Text(
                                    "Take a photo",
                                    style: TextStyle(color: green),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              height: 200,
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: green.withOpacity(0.1),
                                  border: Border.all(
                                    color: green,
                                  )),
                              child: Image.file(
                                imageFile,
                                fit: BoxFit.cover,
                              )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AyurvedicResuts()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "Upload a Photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        File imageFile = File(pickedFile.path);
      });
    }
  }
}
