import 'package:flutter/material.dart';
import 'package:profile/app/details/details.dart';
import 'package:profile/app/home/components/pet_card.dart';
import 'package:profile/utils/sample_data.dart';

class PetsAvailable extends StatelessWidget {
  const PetsAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pets.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PetDetailsPage(
                pet: pets[index],
              ),
            ),
          ),
          child: PetCard(
            pet: pets[index],
          ),
        );
      },
    );
  }
}
