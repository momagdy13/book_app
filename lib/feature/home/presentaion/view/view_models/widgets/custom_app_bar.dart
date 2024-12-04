import 'package:book_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLogo),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.imagesSearch,
              width: 26,
            ),
          )
        ],
      ),
    );
  }
}
