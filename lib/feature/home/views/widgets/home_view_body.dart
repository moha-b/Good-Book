import 'package:flutter/material.dart';
import 'package:good_book/feature/home/views/widgets/books_list_view.dart';
import '../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'home_custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 40),
              CustomAppBar(),
              BooksListView(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text("Best Sellers",style: Styles.titles,),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
