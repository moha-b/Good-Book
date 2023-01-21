import 'package:flutter/material.dart';
import 'package:good_book/core/utils/styles.dart';
import 'package:good_book/feature/search/view/widgets/search_list_view.dart';
import 'package:good_book/feature/search/view/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 20),
              SearchTextField(),
              SizedBox(
                height: 16),
              Text("Results",style: Styles.regular,),
              SizedBox(
                height: 8),
              Expanded(child: SearchResult())
            ],
          ),
        ),
      ),
    );
  }
}
