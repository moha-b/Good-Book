import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19\$',
              backgroundColor: AppColor.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(topLeft: const Radius.circular(16),bottomLeft: const Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'free preview',
              backgroundColor: Colors.pinkAccent,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(topRight: const Radius.circular(16),bottomRight: const Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}