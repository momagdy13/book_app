import 'dart:ui';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image), // Replace with your asset path
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Positioned IconButton with blurred background
          Positioned(
            bottom: 8, // Distance from the top
            right: 8, // Distance from the right
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(24), // Rounded blur background
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 8, sigmaY: 8), // Adjust blur intensity
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.2), // Slight background overlay
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      // Add your button functionality here
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
