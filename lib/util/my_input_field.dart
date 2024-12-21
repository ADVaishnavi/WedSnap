import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInputField extends StatelessWidget {
final String hintText;
final IconData suffixIcon;
final bool obscureText;
final TextEditingController controller;

  const MyInputField(
    {super.key, 
    required this.hintText, 
    required this.suffixIcon, 
    required this.obscureText, 
    required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        suffixIcon: Icon(suffixIcon, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey,
          )
        )
      ),
    );
  }
}