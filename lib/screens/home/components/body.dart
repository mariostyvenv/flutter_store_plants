import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/screens/home/components/head_with_searchbox.dart';
import 'package:store/screens/home/components/recommend_plants.dart';
import 'package:store/screens/home/components/title_with_more_button.dart';

import 'featured_plant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recomendado',
            press: () {},
          ),
          RecommendPlants(),
          TitleWithMoreButton(
            title: 'Plantas destacadas',
            press: () {},
          ),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}