import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/spacing_widgets.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/vic.jpeg'),
          radius: 26.0,
        ),
        addHorizontalSpace(18.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Victoria Mwaura',
              style: GoogleFonts.montserrat(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            addVerticalSpace(5.0),
            Text(
              'Active Status',
              style: GoogleFonts.montserrat(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey[200],
              ),
            ),
          ],
        )
      ],
    );
  }
}
