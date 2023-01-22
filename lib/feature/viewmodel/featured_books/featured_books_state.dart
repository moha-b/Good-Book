import 'package:equatable/equatable.dart';
import '../../data/models/book_model.dart';

abstract class FeaturedBooksState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}
