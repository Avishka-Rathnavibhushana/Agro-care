import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {Key? key,
      required this.text,
      required this.ontap,
      required this.selected})
      : super(key: key);

  final String text;
  final ontap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 5,
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: selected ? Color(0xFF4B4B4B) : Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: selected ? Color(0xFF05B284) : Color(0xFFBEF8C4),
        side: BorderSide(
          color: Colors.black,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: ontap,
    );
  }
}
