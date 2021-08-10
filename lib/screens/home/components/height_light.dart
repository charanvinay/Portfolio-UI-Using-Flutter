import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/responsive.dart';
import 'package:flutter/material.dart';

class HeightLight extends StatelessWidget {
  const HeightLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(label!,
            style: !Responsive.isMobile(context)
                ? Theme.of(context).textTheme.subtitle2!
                : Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 12))
      ],
    );
  }
}
