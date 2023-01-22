import 'package:dartz/dartz.dart';
import '../../../core/errors/failure.dart';
import '../../../core/utils/api.dart';
import '../models/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final Api api;

  HomeRepoImpl(this.api);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooksData() async {
    // TODO: implement fetchBestSellerBooksData
    try {
      var data = await api.getData(
          endPoints: "/volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
      List<BookModel> books = [];
      for(var item in data['item']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e){
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooksData() {
    // TODO: implement fetchNewsBooksData
    throw UnimplementedError();
  }

}