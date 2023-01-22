import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_book/feature/data/repo/home_repo.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.repo) : super(FeaturedBooksInitial());
  HomeRepo repo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var results = await repo.fetchFeatureBooksData();

    results.fold((failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}