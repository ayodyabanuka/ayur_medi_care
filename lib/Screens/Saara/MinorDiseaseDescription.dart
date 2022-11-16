import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

class MinorDiseaseDescription extends StatefulWidget {
  MinorDiseaseDescription({Key key}) : super(key: key);

  @override
  State<MinorDiseaseDescription> createState() =>
      _MinorDiseaseDescriptionState();
}

String description =
    '''Diarrhea — loose, watery and possibly more-frequent bowel movements — is a common problem. It may be present alone or be associated with other symptoms, such as nausea, vomiting, abdominal pain or weight loss.

Luckily, diarrhea is usually short-lived, lasting no more than a few days. But when diarrhea lasts beyond a few days into weeks, it usually indicates that there's another problem.''';

class _MinorDiseaseDescriptionState extends State<MinorDiseaseDescription> {
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
            height: 90,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("Assets/Images/minorDescription.png"),
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
                      "Diarrhea",
                      style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 280,
                      height: 210,
                      child: Placeholder(),
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
