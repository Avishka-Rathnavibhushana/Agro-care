import 'package:agrocare/widgets/simpleButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox({
    required this.text,
    required this.ontap,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String text;
  final String image;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fitHeight,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SimpleButton(
                    text: "LOGIN",
                    ontap: ontap,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
