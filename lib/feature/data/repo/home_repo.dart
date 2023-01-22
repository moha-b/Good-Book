import 'package:dartz/dartz.dart';
import 'package:good_book/core/errors/failure.dart';
import 'package:good_book/feature/data/models/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooksData();
  Future<Either<Failure, List<BookModel>>> fetchNewsBooksData();
}