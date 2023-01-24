import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_book/features/data/models/book_model.dart';
import 'package:good_book/features/home/widgets/similar_books_section.dart';
import 'books_details_sectioni.dart';
import 'custom_book_details_app_bar.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
