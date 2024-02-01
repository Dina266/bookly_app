import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_detail_section.dart';
import 'book_similar_section.dart';
import 'custom_details_appbar.dart';

class BookDetaisViewBody extends StatelessWidget {
  const BookDetaisViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailAppBar(),
                BooksDetailSection(bookModel: bookModel,),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                const BooksSimilarSection(),
                const SizedBox(
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
