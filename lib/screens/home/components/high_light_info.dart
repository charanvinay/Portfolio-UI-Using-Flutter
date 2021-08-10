import 'package:charan_portfolio/components/animated_counter.dart';
import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/responsive.dart';
import 'package:charan_portfolio/screens/home/components/height_light.dart';
import 'package:flutter/material.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(value: 20, text: "+"),
                      label: "GitHub Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(value: 730, text: "+"),
                      label: "Days of Experience",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(value: 200, text: "+"),
                      label: "Connections",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(value: 300, text: "+"),
                      label: "Profile Views",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(value: 20, text: "+"),
                  label: "GitHub Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(value: 730, text: "+"),
                  label: "Days of experience",
                ),
                HeightLight(
                  counter: AnimatedCounter(value: 200, text: "+"),
                  label: "Connections",
                ),
                HeightLight(
                  counter: AnimatedCounter(value: 300, text: "+"),
                  label: "Profile Views",
                ),
              ],
            ),
    );
  }
}
