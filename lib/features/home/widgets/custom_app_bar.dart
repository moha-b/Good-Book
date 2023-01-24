import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_book/core/utils/styles.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Text("GoodBook",style: Styles.setStyle(size: 20),),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchScreen);
              },
              icon: const Icon(
                Iconsax.search_normal,
                size: 22,
              ))
        ],
      ),
    );
  }
}
