import 'package:charan_portfolio/components/animated_linear_progress_indicator.dart';
import 'package:charan_portfolio/constants.dart';
import 'package:flutter/material.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(label: "HTML", percentage: 0.8),
        AnimatedLinearProgressIndicator(label: "CSS", percentage: 0.75),
        AnimatedLinearProgressIndicator(label: "Javascript", percentage: 0.65),
        AnimatedLinearProgressIndicator(label: "Angular", percentage: 0.6),
        AnimatedLinearProgressIndicator(label: "XML", percentage: 0.75),
        AnimatedLinearProgressIndicator(label: "Adobe XD", percentage: 0.65),
      ],
    );
  }
}
