import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String displayText;
  final bool isPassword;
  final bool isNumber;

  MyTextFormField({
    required this.displayText,
    required this.isPassword,
    this.isNumber = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0x56fcfdfd),
        hintText: displayText,
        contentPadding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
        hintStyle: TextStyle(
            color: Colors.white
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      obscureText: isPassword ? true : false,
      keyboardType:isNumber ? TextInputType.number : TextInputType.text,
    );
  }
}
