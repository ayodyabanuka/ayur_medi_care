import 'package:ayur_medi_care/Screens/Thirushi/BeautyCareVoice.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

class BeautyCareHome extends StatefulWidget {
  BeautyCareHome({Key key}) : super(key: key);

  @override
  State<BeautyCareHome> createState() => _BeautyCareHomeState();
}

TextEditingController search = TextEditingController();

class _BeautyCareHomeState extends State<BeautyCareHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            padding: const EdgeInsets.all(10),
            height: 210,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("Assets/Images/Beautycare1.png"),
                    fit: BoxFit.fitWidth)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Beauty Care",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: search,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          cursorColor: const Color.fromARGB(255, 0, 0, 0),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your question here",
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 116, 116, 116),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BeautyCareVoice()));
                          },
                          icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BeautyCareVoice()));
                          },
                          icon: const Icon(Icons.mic_none_outlined))
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Discover",
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Text(
                  "WHAT'S NEW TODAY",
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_right_alt)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "Assets/Images/images${index + 1}.jpg",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
