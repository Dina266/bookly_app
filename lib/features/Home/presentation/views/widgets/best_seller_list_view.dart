import 'package:flutter/material.dart';

import 'book_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BookListVieItem(),
            ));
  }
}
