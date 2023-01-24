import 'package:flutter/material.dart';
import 'package:good_book/core/utils/colors.dart';
import 'package:good_book/features/data/models/book_model.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(
              backgroundColor: AppColor.white,
              textColor: Colors.black,
              text: "Free"),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              backgroundColor: AppColor.orange,
              textColor: Colors.white,
              text: getText(bookModel)),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Free Preview';
    }
  }
}
