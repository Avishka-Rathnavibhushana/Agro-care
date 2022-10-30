import 'package:agrocare/widgets/navigationButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUSPage extends StatefulWidget {
  AboutUSPage({Key? key}) : super(key: key);

  @override
  State<AboutUSPage> createState() => _AboutUSPageState();
}

class _AboutUSPageState extends State<AboutUSPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                100,
              ),
              child: Image.asset(
                "assets/image 2.png",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "About US",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Text(
                    "We help people and businesses by providing financial services and information to achieve their goals and aspirations in a sustainable way.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
