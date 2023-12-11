import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          SizedBox(height: 50,),
          Text('Best Seller' , style: Styles.titleMidium),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
            image: DecorationImage(image: AssetImage(AssetsData.testImage))),
      ),
    )
        ],
      ),
    );
  }
}