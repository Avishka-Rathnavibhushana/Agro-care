import 'package:agrocare/aboutUsPage.dart';
import 'package:agrocare/contactUsPage.dart';
import 'package:agrocare/faqPage.dart';
import 'package:agrocare/featuresPage.dart';
import 'package:agrocare/homePage.dart';
import 'package:agrocare/widgets/navigationButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationHome extends StatefulWidget {
  NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int selectedPage = 0;
  List<Widget> pages = [
    HoemPage(),
    AboutUSPage(),
    FeaturesPage(),
    ContactUSPage(),
    FAQPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11CC99),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agro Care",
                style: GoogleFonts.cinzelDecorative(
                  color: Colors.black,
                  fontSize: 96,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NavigationButton(
                    text: "HOME",
                    ontap: () {
                      setState(() {
                        selectedPage = 0;
                      });
                    },
                    selected: selectedPage == 0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NavigationButton(
                    text: "ABOUT US",
                    ontap: () {
                      setState(() {
                        selectedPage = 1;
                      });
                    },
                    selected: selectedPage == 1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NavigationButton(
                    text: "FEAURES",
                    ontap: () {
                      setState(() {
                        selectedPage = 2;
                      });
                    },
                    selected: selectedPage == 2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NavigationButton(
                    text: "CONTACT US",
                    ontap: () {
                      setState(() {
                        selectedPage = 3;
                      });
                    },
                    selected: selectedPage == 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NavigationButton(
                    text: "FAQ",
                    ontap: () {
                      setState(() {
                        selectedPage = 4;
                      });
                    },
                    selected: selectedPage == 4,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              pages[selectedPage],
            ],
          ),
        ),
      ),
    );
  }
}
