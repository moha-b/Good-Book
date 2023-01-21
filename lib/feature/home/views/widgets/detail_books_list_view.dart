import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_book_cover.dart';

class DetailsBooksListView extends StatelessWidget {
  const DetailsBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {},
              child: const CustomBookCover(),
            ),
          );
        },
      ),
    );
  }
}
