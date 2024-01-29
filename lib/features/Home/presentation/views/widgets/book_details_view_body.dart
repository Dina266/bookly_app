import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'bookly_rating.dart';
import 'custom_details_appbar.dart';
import 'custom_book_image.dart.dart';

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
              padding: EdgeInsets.symmetric(horizontal: width*0.2 , vertical: height*0.04),
              child: const CustomBookImage(),
            ),
            Text('The Jungle Book', style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 6,),
              Opacity(
                opacity: 0.7,
                child: Text('Rudyard Kipling', style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal
                ),),
              ),
              const SizedBox(height: 18,),
              const Booklyrating(mainAxisAlignment: MainAxisAlignment.center,)
          ],
        ),
      ),

    );
  }
}
