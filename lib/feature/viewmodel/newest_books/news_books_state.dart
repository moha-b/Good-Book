part of 'news_books_cubit.dart';

abstract class NewsBooksState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NewsBooksInitial extends NewsBooksState {}
class NewsBooksLoading extends NewsBooksState {}
class NewsBooksFailure extends NewsBooksState {
  final String errorMessage;

  NewsBooksFailure(this.errorMessage);
}
class NewsBooksSuccess extends NewsBooksState {
  final List<BookModel> books;
  NewsBooksSuccess(this.books);
}
