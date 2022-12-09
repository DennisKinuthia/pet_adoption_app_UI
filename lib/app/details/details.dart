import 'package:flutter/material.dart';
import 'package:profile/app/details/components/custom_nav_drawer.dart';
import 'package:profile/app/details/components/details_app_bar.dart';
import 'package:profile/app/details/components/owner_info.dart';
import 'package:profile/app/details/components/page_slider_indicator.dart';
import 'package:profile/utils/pet_model.dart';

import 'components/cat_details.dart';

class PetDetailsPage extends StatefulWidget {
  const PetDetailsPage({super.key, required this.pet});

  final Pet pet;

  @override
  State<PetDetailsPage> createState() => _PetDetailsPageState();
}

class _PetDetailsPageState extends State<PetDetailsPage> {
  int _activeIndex = 0;
  final _pageViewController = PageController();
  @override
  Widget build(BuildContext context) {
    _pageViewController.addListener(() {
      setState(() {
        _activeIndex = _pageViewController.page!.round();
      });
    });
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: size.height * .6,
            child: PageView.builder(
              itemCount: widget.pet.images.length,
              controller: _pageViewController,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(color: widget.pet.color),
                  child: Image.asset(
                    widget.pet.images[index],
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          ),
          const DetailsPageAppBar(),
          CustomPageSlider(
            length: widget.pet.images.length,
            activeIndex: _activeIndex,
          ),
          CatDetails(
            pet: widget.pet,
          ),
          const OwnerInfo(),
        ],
      ),
    );
  }
}
