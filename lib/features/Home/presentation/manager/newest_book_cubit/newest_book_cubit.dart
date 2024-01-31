import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubitCubit extends Cubit<NewestBookCubitState> {
  NewestBookCubitCubit() : super(NewestBookCubitInitial());
}
