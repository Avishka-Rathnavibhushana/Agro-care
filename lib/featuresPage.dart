import 'package:agrocare/widgets/featureBox.dart';
import 'package:agrocare/widgets/navigationButton.dart';
import 'package:agrocare/widgets/simpleButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturesPage extends StatefulWidget {
  FeaturesPage({Key? key}) : super(key: key);

  @override
  State<FeaturesPage> createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Row(
              children: [
                FeatureBox(
                  text: "LOGIN AS A\nFARMER",
                  ontap: () {},
                  image: "assets/Rectangle 7.png",
                ),
                SizedBox(
                  width: 15,
                ),
                FeatureBox(
                  text: "LOGIN AS A\nCUSTOMER",
                  ontap: () {},
                  image: "assets/Rectangle 8.png",
                ),
                SizedBox(
                  width: 15,
                ),
                FeatureBox(
                  text: "MANAGE YOUR A\nONLINE STORE",
                  ontap: () {},
                  image: "assets/Rectangle 9.png",
                ),
                SizedBox(
                  width: 15,
                ),
                FeatureBox(
                  text: "ASK QUESTIONS\nON AGRICULTURE",
                  ontap: () {},
                  image: "assets/Rectangle 10.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
