import 'package:agrocare/widgets/contactBox.dart';
import 'package:agrocare/widgets/navigationButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUSPage extends StatefulWidget {
  ContactUSPage({Key? key}) : super(key: key);

  @override
  State<ContactUSPage> createState() => _ContactUSPageState();
}

class _ContactUSPageState extends State<ContactUSPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Contact Us".toUpperCase(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 45,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ContactBox(
              image: "assets/image 3.png", text: "Email : Test@gmail.com"),
          SizedBox(
            height: 10,
          ),
          ContactBox(
              image: "assets/image 4.png",
              text: "TEL : 077-1234567 / 071-2456789"),
          SizedBox(
            height: 10,
          ),
          ContactBox(
              image: "assets/image 5.png",
              text: "Address : no:01, test, test rd"),
          SizedBox(
            height: 10,
          ),
          ContactBox(
              image: "assets/image 6.png", text: "Facebook : test address"),
          SizedBox(
            height: 10,
          ),
          ContactBox(
              image: "assets/image 7.png", text: "Whatsapp :  077-1234567"),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
