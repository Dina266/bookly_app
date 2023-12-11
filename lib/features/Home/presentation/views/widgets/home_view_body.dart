import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustListViewItem(),
      ],
    );
  }
}

class CustListViewItem extends StatelessWidget {
  const CustListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
            image: DecorationImage(image: AssetImage(AssetsData.testImage))
          ),
        ),
        ),
    );
  }
}