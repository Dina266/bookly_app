import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_button.dart';
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
              const SizedBox(height: 17,),
              const Booklyrating(mainAxisAlignment: MainAxisAlignment.center,),
              const SizedBox(height: 37,),
              BookAction()
          ],
        ),
      ),

    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(child: CustomButton(
            text: '19.99€',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          )
          ),
          Expanded(child: CustomButton(
            fontSize: 16,
            text: 'Free preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          )
          ),
        ],
      ),
    );
  }
}