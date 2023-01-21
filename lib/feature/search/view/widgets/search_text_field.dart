import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/utils/colors.dart';


class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          labelText: "Search",
          labelStyle: const TextStyle(color: AppColor.white),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.search_normal,
              color: AppColor.white,
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColor.white));
  }
}
