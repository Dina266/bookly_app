import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;

  Future<void> featchNewestBook() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) => emit(NewestBookFailure(failure.errMessage)),
        (books) => emit(NewestBookSuccess(books)));
  }
}
