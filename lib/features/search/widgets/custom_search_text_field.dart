import 'package:flutter/material.dart';
import 'package:good_book/core/utils/colors.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        labelText: 'Search',
        labelStyle: const TextStyle(color: AppColor.white),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.search_normal,
            size: 22,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        16,
      ),
    );
  }
}
