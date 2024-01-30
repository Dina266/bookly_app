import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'bookly_rating.dart';
import 'custom_book_image.dart.dart';

class BooksDetailSection extends StatelessWidget {
  const BooksDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.2, vertical: height * 0.02),
          child: const CustomBookImage(),
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.normal),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        const Booklyrating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 27,
        ),
        const BookAction(),
      ],
    );
  }
}
