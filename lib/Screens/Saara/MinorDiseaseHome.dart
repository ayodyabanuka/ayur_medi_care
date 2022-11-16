import 'package:ayur_medi_care/Screens/Saara/MinorDiseaseResults.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:multiple_search_selection/helpers/create_options.dart';
import 'package:multiple_search_selection/multiple_search_selection.dart';

class MinorDiseaseHome extends StatefulWidget {
  MinorDiseaseHome({Key key}) : super(key: key);

  @override
  State<MinorDiseaseHome> createState() => _MinorDiseaseHomeState();
}

List symptoms = [
  "sneezing",
  "fatigue",
  "chills",
  "watering eyes",
  "weight loss",
  "lethargy",
  "restlessness",
  "obesity",
  "excessive hunger",
  "increased appetite",
  "polyuria",
  "diarrhoea",
  "dehydration",
  "sunkeneyes",
  "vomiting",
  "acidity",
  "indigestion",
  "headache",
  "blurred vision",
  "irritability",
  "vomiting",
  "chills",
  "skin rash",
  "itching",
  "high fever",
  "constipation",
  "cough",
  "phlegm",
  "throat irritation",
  "redness of eyes",
  "chest pain"
];

class _MinorDiseaseHomeState extends State<MinorDiseaseHome> {
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
                    image: AssetImage("Assets/Images/minor1.png"),
                    fit: BoxFit.fitWidth)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Minor Disease Detection",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter the symptoms here",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MultipleSearchSelection(
                      items: symptoms, // List<Country>
                      fieldToCheck: (c) {
                        return c; // String
                      },
                      itemBuilder: (symptoms) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 12,
                              ),
                              child: Text(symptoms),
                            ),
                          ),
                        );
                      },
                      pickedItemBuilder: (symptoms) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[400]),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(symptoms),
                          ),
                        );
                      },
                      onTapShowedItem: () {},
                      onPickedChange: (items) {},
                      onItemAdded: (item) {},
                      onItemRemoved: (item) {},
                      sortShowedItems: true,
                      sortPickedItems: true,
                      fuzzySearch: FuzzySearch.jaro,
                      itemsVisibility: ShowedItemsVisibility.onType,
                      showSelectAllButton: true,
                      maximumShowItemsHeight: 100,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MinorDiseaseResults()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Confirm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
}
