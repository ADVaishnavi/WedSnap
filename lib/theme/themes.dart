import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary:  Color(0xFF8C1D09),
    onPrimary: Color(0xFF623DE9),
    secondary: Color(0xFF9DB2CF),
    tertiary: Color(0xFF333333)
  ),
  // Set the default font family to Poppins
  fontFamily: GoogleFonts.poppins().fontFamily,
  // Optionally, you can apply the Poppins font to the entire text theme
  textTheme: GoogleFonts.poppinsTextTheme(),
);

