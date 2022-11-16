import 'package:ayur_medi_care/Screens/Thirushi/BeautyCareVoice.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

class BeautyDescription extends StatefulWidget {
  BeautyDescription({Key key}) : super(key: key);

  @override
  State<BeautyDescription> createState() => _BeautyDescriptionState();
}

String description =
    '''A major component— and signal— of healthy skin is a natural glow. But causes like lack of sleep, stress, age, and even what you eat can rob your complexion of its radiance. The good news is that you can transform skin that looks dull and tired to luminous and glowing at home. Just follow these expert skin and makeup tips, home remedies, and best skincare product picks from Good Housekeeping Institute Beauty Lab scientists ''';

class _BeautyDescriptionState extends State<BeautyDescription> {
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
            height: 230,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image:
                        AssetImage("Assets/Images/BeautycareDescription.png"),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 94,
                      height: 94,
                      child: Image.asset("Assets/Images/images1.jpg"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
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
}
