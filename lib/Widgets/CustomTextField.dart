import 'package:ayur_medi_care/Utils/Colors.dart';
import 'package:flutter/material.dart';

// Create custom Textfiled widget
class customizedTextField extends StatefulWidget {
  final TextEditingController controller;
  final String lableText;
  final double width;

  customizedTextField({Key key, this.controller, this.lableText, this.width})
      : super(key: key);

  @override
  State<customizedTextField> createState() => _customizedTextFieldState();
}

bool _obscureText = true;

class _customizedTextFieldState extends State<customizedTextField> {
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            border: Border.all(color: green, width: 1),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 1),
                  blurRadius: 30,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(0.3)),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            controller: widget.controller,
            style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            cursorColor: const Color.fromARGB(255, 0, 0, 0),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.lableText,
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 116, 116, 116),
              ),
            ),
          ),
        ));
  }
}
