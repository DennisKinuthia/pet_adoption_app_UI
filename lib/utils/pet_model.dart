import 'package:flutter/material.dart';

class Pet {
  const Pet(
      {required this.species,
      required this.name,
      required this.age,
      required this.images,
      required this.color,
      required this.gender});
  final String species, name;
  final List images;
  final int age;
  final IconData gender;
  final Color color;
}
