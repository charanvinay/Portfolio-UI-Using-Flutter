import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/responsive.dart';
import 'package:charan_portfolio/screens/home/components/high_light_info.dart';
import 'package:charan_portfolio/screens/home/components/home_banner.dart';
import 'package:charan_portfolio/screens/home/components/my_projects.dart';
import 'package:charan_portfolio/screens/home/components/recommendations.dart';
import 'package:charan_portfolio/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}
