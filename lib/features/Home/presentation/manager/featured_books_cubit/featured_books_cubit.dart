import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeaturedBook() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) => emit(FeaturedBooksFailure(failure.errMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
