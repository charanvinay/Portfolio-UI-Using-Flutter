import 'package:charan_portfolio/components/animated_linear_progress_indicator.dart';
import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/screens/main/components/area_info_text.dart';
import 'package:charan_portfolio/screens/main/components/coding.dart';
import 'package:charan_portfolio/screens/main/components/knowledges.dart';
import 'package:charan_portfolio/screens/main/components/my_info.dart';
import 'package:charan_portfolio/screens/main/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(title: "Residence", text: "Andhra Pradesh"),
                    AreaInfoText(title: "City", text: "Eluru"),
                    AreaInfoText(title: "Age", text: "20"),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        launch(
                            "https://drive.google.com/file/d/1tt-r5qVWTGYlVoNlWSpjOvjWXD_JYfb3/view?usp=sharing");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Download Resume",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launch(
                                  "https://www.linkedin.com/in/charanvinay-narni-8681931b6/");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launch("https://github.com/charanvinay");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launch("https://twitter.com/chanay_4");
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
