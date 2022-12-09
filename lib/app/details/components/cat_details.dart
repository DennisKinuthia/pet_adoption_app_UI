import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/utils/pet_model.dart';
import 'package:profile/utils/spacing_widgets.dart';

class CatDetails extends StatelessWidget {
  const CatDetails({super.key, required this.pet});
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10.0,
        ),
        margin: EdgeInsets.only(top: size.height * .325),
        width: size.width * .85,
        height: size.height * .14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  pet.name,
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Icon(
                  pet.gender,
                  color: primaryColor,
                  size: 30.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  pet.species,
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '${pet.age} years old',
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.location_pin,
                  color: primaryColor,
                ),
                addHorizontalSpace(8.0),
                Text(
                  '120 Bremner Blvd, Torornto, Canada',
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
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
