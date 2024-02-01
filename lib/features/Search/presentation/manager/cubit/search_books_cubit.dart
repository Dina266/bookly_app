import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Search/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> featchBook({required String searchName}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchBooks(searchName:searchName );

    result.fold((failure) => emit(SearchBooksFailure(failure.errMessage)),
        (books) => emit(SearchBooksSuccess(books)));
  }
}
