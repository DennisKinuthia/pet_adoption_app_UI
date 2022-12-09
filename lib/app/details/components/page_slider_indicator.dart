import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
import 'package:profile/utils/constants.dart';

class CustomPageSlider extends StatelessWidget {
  const CustomPageSlider(
      {super.key, required this.length, required this.activeIndex});
  final int length;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SliderIndicator(
        activeIndex: activeIndex,
        length: length,
        indicator: const Icon(
          Icons.radio_button_unchecked,
          color: primaryColor,
          size: 20.0,
        ),
        activeIndicator: const Icon(
          Icons.fiber_manual_record,
          color: primaryColor,
          size: 20.0,
        ),
      ),
    );
  }
}
