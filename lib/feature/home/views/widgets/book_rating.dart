import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/colors.dart';


class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Icon(Iconsax.star1,color: AppColor.orange,size: 25,),
        SizedBox(width: 5),
        Text("4.6",style: TextStyle(fontSize: 20),),
        SizedBox(width: 5),
        Text("(400)",style: TextStyle(fontSize: 20),),
      ],
    );
  }
}
