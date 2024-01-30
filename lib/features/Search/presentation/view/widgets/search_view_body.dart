import 'package:bookly_app/features/Search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../Home/presentation/views/widgets/book_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text('Search Result' , style: Styles.textStyle18),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchListView()),
          ],
      ),
    );
  }
}


class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context , index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BookListVieItem(),
      ));
  }
}
