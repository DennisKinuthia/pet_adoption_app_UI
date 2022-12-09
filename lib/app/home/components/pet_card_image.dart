import 'package:flutter/material.dart';
import 'package:profile/utils/pet_model.dart';

class PetCardImage extends StatelessWidget {
  const PetCardImage({
    Key? key,
    required this.size,
    required this.pet,
  }) : super(key: key);

  final Size size;
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 30.0),
          width: size.width * .45,
          height: size.height * .25,
          decoration: BoxDecoration(
            color: pet.color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const SizedBox(),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image(
            image: AssetImage(pet.images[0]),
            height: size.height * .275,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
