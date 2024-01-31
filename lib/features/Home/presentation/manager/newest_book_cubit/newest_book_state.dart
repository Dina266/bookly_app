part of 'newest_book_cubit.dart';

sealed class NewestBookCubitState extends Equatable {
  const NewestBookCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBookCubitInitial extends NewestBookCubitState {}
final class NewestBookCubitLoading extends NewestBookCubitState {}
final class NewestBookCubitFailure extends NewestBookCubitState {
  final String errMessage;

  const NewestBookCubitFailure(this.errMessage);
}
final class NewestBookCubitSuccess extends NewestBookCubitState {
  final List<BookModel> books;

  const NewestBookCubitSuccess(this.books);
}
