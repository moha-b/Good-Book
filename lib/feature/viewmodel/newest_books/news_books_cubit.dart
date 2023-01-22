import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_book/feature/data/repo/home_repo.dart';
import '../../data/models/book_model.dart';
part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.repo) : super(NewsBooksInitial());
  HomeRepo repo;

  Future<void> fetchNewestBooks() async{
    emit(NewsBooksLoading());
    var results = await repo.fetchNewestBooksData();
    results.fold((failure) => emit(NewsBooksFailure(failure.errorMessage)), (books) => emit(NewsBooksSuccess(books)));
  }
}
