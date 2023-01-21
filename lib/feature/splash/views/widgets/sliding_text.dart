import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation, super(key: key);

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _slidingAnimation,
        builder: (context,_) {
          return SlideTransition(position: _slidingAnimation,child: const Text("Just Read It",style: Styles.regular,textAlign: TextAlign.center,));
        }
    );
  }
}
