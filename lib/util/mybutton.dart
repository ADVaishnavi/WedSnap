import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const Mybutton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      padding: EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.poppins().fontFamily,),
      ),
    );
  }
}
