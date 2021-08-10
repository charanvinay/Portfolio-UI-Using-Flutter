import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/responsive.dart';
import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: Responsive.isMobile(context)
            ? Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor, fontSize: 12)
            : Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor),
      ),
    );
  }
}
