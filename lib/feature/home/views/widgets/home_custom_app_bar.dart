import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_book/core/utils/router.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,left: 16, right: 16,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "GoodBook",
            style: Styles.regular.copyWith(fontSize: 25),
          ),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.searchScreen);
          }, icon: const Icon(Iconsax.search_normal))
        ],
      ),
    );
  }
}
