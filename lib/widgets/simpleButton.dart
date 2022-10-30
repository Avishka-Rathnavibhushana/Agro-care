import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  final String text;
  final ontap;

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
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: Color(0xFFBEF8C4),
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
