import 'package:flutter/material.dart';

import 'custom_details_appbar.dart';
import 'featured_list_view_item.dart';

class BookDetaisViewBody extends StatelessWidget {
  const BookDetaisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.17 , vertical: height*0.04),
              child: const CustomBookImage(),
            )
          ],
        ),
      ),

    );
  }
}
