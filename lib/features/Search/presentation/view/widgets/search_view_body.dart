import 'package:bookly_app/features/Search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/Search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/Search/presentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomSearchTextField(
            onSubmitted: (q) {
              BlocProvider.of<SearchBooksCubit>(context).featchBook(searchName: q);
            },
          ),const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}

