import 'package:flutter/material.dart';
import 'featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right :8.0 , bottom: 8 , top: 8),
            child: FeaturedListViewItem(),
          )),
    );
  }
}
