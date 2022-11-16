import 'package:ayur_medi_care/Screens/Auth/Login.dart';
import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:ayur_medi_care/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

TextEditingController username,
    email,
    phoneNumber,
    password = TextEditingController();

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/authback.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            blurRadius: 30,
                            spreadRadius: 0,
                            color: Colors.grey.withOpacity(0.5)),
                      ],
                      color: const Color.fromARGB(141, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          width: 140,
                          child: Image.asset(
                            "Assets/Images/logo.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "User Name",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customizedTextField(
                        controller: username,
                        lableText: "",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customizedTextField(
                        controller: email,
                        lableText: "",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customizedTextField(
                        controller: phoneNumber,
                        lableText: "",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customizedTextField(
                        controller: password,
                        lableText: "",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text("Log In"))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
