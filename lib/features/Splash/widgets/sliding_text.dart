import 'package:flutter/material.dart';
import 'package:good_book/core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Just Keep Reading',
              style: Styles.setStyle(),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
