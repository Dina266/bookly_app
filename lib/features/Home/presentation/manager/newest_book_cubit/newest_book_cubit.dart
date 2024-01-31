import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_book_state.dart';

class NewestBookCubitCubit extends Cubit<NewestBookCubitState> {
  NewestBookCubitCubit(this.homeRepo) : super(NewestBookCubitInitial());

  final HomeRepo homeRepo;

  Future<void> featchNewestBook() async {
    emit(NewestBookCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) => emit(NewestBookCubitFailure(failure.errMessage)),
        (books) => emit(NewestBookCubitSuccess(books)));
  }
}
