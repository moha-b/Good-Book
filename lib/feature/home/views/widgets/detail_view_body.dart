import 'package:flutter/material.dart';
import 'book_detail_section.dart';
import 'book_suggestion_section.dart';
import 'detail_custom_appbar.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [
                 SizedBox(
                  height: 40,
                ),
                 CustomAppBar(),
                 BookDetailSection(),
                 Expanded(child: SizedBox()),
                 SuggestionsSection(),
              ],
            ),
          )
        ],
      )
    );
  }
}

