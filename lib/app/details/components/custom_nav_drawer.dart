import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/app/common_widgets/sized_box.dart';
import 'package:profile/utils/constants.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(
        28.0,
      ),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(30.0),
          right: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const BorderBox(
            width: 60.0,
            height: 50.0,
            padding: EdgeInsets.all(5.0),
            color: primaryColor,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
            ),
          ),
          Container(
            width: size.width * .65,
            height: 50.0,
            decoration: BoxDecoration(
              boxShadow: myShadow,
              color: primaryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Adoption',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
