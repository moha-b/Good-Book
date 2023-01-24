import 'package:flutter/material.dart';
import 'package:good_book/features/home/widgets/similar_books_list_view.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.setStyle()
        ),
        const SizedBox(
          height: 8,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}
