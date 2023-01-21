import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_book_cover.dart';
import 'book_actions_buttons.dart';
import 'book_rating.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.3),
            child: const CustomBookCover()),
        SizedBox(height: size.height * 0.03),
        Text(
          "Book Name",
          style: Styles.regular.copyWith(fontSize: 30),
          maxLines: 2,
        ),
        SizedBox(height: size.height * 0.005),
        const Text("Author"),
        SizedBox(height: size.height * 0.005),
        const Rating(),
        SizedBox(height: size.height * 0.03),
        const BookAction(),
      ],
    );
  }
}
