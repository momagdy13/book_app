import 'package:book_app/feature/home/presentaion/view/view_models/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: HomeViewBody(),
    );
  }
}
