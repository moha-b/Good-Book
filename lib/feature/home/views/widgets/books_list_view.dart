import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_book/core/utils/router.dart';
import 'package:good_book/core/widgets/custom_book_cover.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(onTap: () {
                GoRouter.of(context).push(AppRouter.detailScreen);
              },child: const CustomBookCover(),));
        },
      ),
    );
  }
}
