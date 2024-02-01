import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widgets.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_view_item.dart';
import 'package:bookly_app/features/Search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(
                      bookModel: state.books[index],
                    ),
                  ));
        }
        else if (state is SearchBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        }
        else if (state is SearchBooksLoading){
          return const CustomLoadingIndicator();
        }
        else {
          return const Text('Search for Free Books' , style: Styles.textStyle20,);
        }
      },
    );
  }
}
