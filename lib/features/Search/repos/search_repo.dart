import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure , List<BookModel>>> fetchBooks({ required String searchName});
}