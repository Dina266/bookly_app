import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'book_action.dart';
import 'bookly_rating.dart';
import 'custom_details_appbar.dart';
import 'custom_book_image.dart.dart';
import 'similar_book_list_view.dart';

class BookDetaisViewBody extends StatelessWidget {
  const BookDetaisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.2 , vertical: height*0.02),
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
            const SizedBox(height: 17,),
            const Booklyrating(mainAxisAlignment: MainAxisAlignment.center,),
            const SizedBox(height: 27,),
            const BookAction(),
            const Expanded(child: SizedBox(height: 50,)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('You can also like' , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
            const SizedBox(height: 16,),
            const SimilarBookListView(),
            const SizedBox(height: 40,),
        ],
      ),
    ),
        )
      ],
    );
  }
}

