import 'package:bookly_app/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}