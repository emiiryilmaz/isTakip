import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ext.dart';

class Tema {
  inputDec(String hintText, IconData icon) {
    return InputDecoration(
      border: InputBorder.none,
      hintText: hintText,
      hintStyle: GoogleFonts.quicksand(color: Renk(textColor)),
      prefixIcon: Icon(
        icon,
        color: Renk("5BA7FB"),
      ),
    );
  }
}
