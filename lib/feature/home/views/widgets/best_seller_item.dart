import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Text(
                    "Book Title here sdal jglsjlg s sd klfj klsdfjkl  dfsfls ka jfsdljdfa ofdksp odkap",
                    style: Styles.regular.copyWith(fontSize: 20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                const Text("Author name",),
                const Spacer(),
                Row(
                  children: [
                    Text("19 \$",style: Styles.regular.copyWith(fontSize: 20),),
                    const Spacer(),
                    const Rating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}