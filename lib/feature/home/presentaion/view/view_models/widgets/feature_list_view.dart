import 'package:book_app/core/app_images.dart';
import 'package:book_app/feature/home/presentaion/view/view_models/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8),
              child: FeaturedItem(
                  image: Assets.images1a6159a32cdfc139d4ef20f5d7a7c61d),
            );
          }),
    );
  }
}
