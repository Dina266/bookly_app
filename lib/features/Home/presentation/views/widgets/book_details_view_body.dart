import 'package:flutter/material.dart';
import 'book_detail_section.dart';
import 'book_similar_section.dart';
import 'custom_details_appbar.dart';

class BookDetaisViewBody extends StatelessWidget {
  const BookDetaisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailAppBar(),
                BooksDetailSection(),
                Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                BooksSimilarSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
