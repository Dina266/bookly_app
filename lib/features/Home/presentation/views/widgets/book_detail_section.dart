import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'bookly_rating.dart';
import 'custom_book_image.dart.dart';

class BooksDetailSection extends StatelessWidget {
  const BooksDetailSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.2, vertical: height * 0.02),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? '',
          ),
        ),
        Text(
          bookModel.volumeInfo.title?? '',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0]?? '',
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
        BookAction(bookModel: bookModel,),
      ],
    );
  }
}
