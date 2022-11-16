import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

class AyurvedicDescription extends StatefulWidget {
  AyurvedicDescription({Key key}) : super(key: key);

  @override
  State<AyurvedicDescription> createState() => _AyurvedicDescriptionState();
}

String description =
    '''Rosacea is a common, chronic, inflammatory skin condition that affects more than 10% of fair skinned people. Rosacea symptoms include flushing, hyper-reactivity, persistent redness, pimples and pustules, inflamed blood vessels and facial swelling. Rosacea is sometimes mistaken for acne, eczema, or even skin allergies. 
Rosacea can affect anyone. But it's most common in middle-aged white women. There's no cure for rosacea, but treatment can control and reduce the signs and symptoms''';

class _AyurvedicDescriptionState extends State<AyurvedicDescription> {
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
            height: 190,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("Assets/Images/plantDescription.png"),
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
                      "Description",
                      style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 94,
                          height: 94,
                          child: Placeholder(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rosacea",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
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
