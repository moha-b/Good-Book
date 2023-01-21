import 'package:flutter/material.dart';

import 'detail_books_list_view.dart';

class SuggestionsSection extends StatelessWidget {
  const SuggestionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding:  EdgeInsets.only(left: 16, bottom: 16),
          child:  Text(
            "You can also like",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: DetailsBooksListView(),
        ),
      ],
    );
  }
}
