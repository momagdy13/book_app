import 'package:book_app/feature/home/presentaion/view/view_models/widgets/custom_app_bar.dart';
import 'package:book_app/feature/home/presentaion/view/view_models/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedListView()],
    );
  }
}
