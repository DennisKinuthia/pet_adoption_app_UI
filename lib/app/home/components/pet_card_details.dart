import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/utils/pet_model.dart';

class PetcardDetails extends StatelessWidget {
  const PetcardDetails({
    Key? key,
    required this.size,
    required this.pet,
  }) : super(key: key);

  final Size size;
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      padding: const EdgeInsets.fromLTRB(18.0, 0, 8.0, 0),
      width: size.width * .45,
      height: size.height * .2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                pet.name,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Icon(
                pet.gender,
                color: primaryColor,
                size: 37.0,
              ),
            ],
          ),
          Text(
            pet.species,
            style: GoogleFonts.montserrat(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
          Text(
            '${pet.age} years old',
            style: GoogleFonts.montserrat(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(
                Icons.location_pin,
                color: primaryColor,
              ),
              Text(
                'Distance: 12 miles',
                style: GoogleFonts.montserrat(
                  color: primaryColor,
                  fontSize: 13.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
