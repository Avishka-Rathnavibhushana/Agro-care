import 'package:agrocare/widgets/simpleButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    required this.text,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            10,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFBEF8C4),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 100,
            height: 60,
            alignment: Alignment.center,
            child: Text(
              text.toUpperCase(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
