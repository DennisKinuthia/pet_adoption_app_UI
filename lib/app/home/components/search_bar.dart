import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(224, 224, 224, 1),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.search_rounded,
            size: 30.0,
            color: primaryColor,
          ),
          Text(
            'Search for pets to adopt',
            style: GoogleFonts.montserrat(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: primaryColor,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.filter_alt_outlined,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
