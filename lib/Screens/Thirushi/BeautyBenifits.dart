import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

class BeautyBenifits extends StatefulWidget {
  BeautyBenifits({Key key}) : super(key: key);

  @override
  State<BeautyBenifits> createState() => _BeautyBenifitsState();
}

String description =
    '''A major component— and signal— of healthy skin is a natural glow. But causes like lack of sleep, stress, age, and even what you eat can rob your complexion of its radiance. The good news is that you can transform skin that looks dull and tired to luminous and glowing at home. Just follow these expert skin and makeup tips, home remedies, and best skincare product picks from Good Housekeeping Institute Beauty Lab scientists ''';

class _BeautyBenifitsState extends State<BeautyBenifits> {
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
            height: 200,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("Assets/Images/BeautycareBenifits.png"),
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
                      "Benifits of the Remedy",
                      style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration:
                                  const BoxDecoration(color: Colors.black12),
                              child: Column(
                                children: [
                                  const Text(
                                    "Title",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 200,
                                      padding: const EdgeInsets.all(10),
                                      decoration:
                                          const BoxDecoration(color: green),
                                      child: const Center(
                                          child: Text(
                                        "Click Info",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
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
