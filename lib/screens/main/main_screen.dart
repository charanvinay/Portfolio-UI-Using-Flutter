import 'package:charan_portfolio/constants.dart';
import 'package:charan_portfolio/responsive.dart';
import 'package:charan_portfolio/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              title: Text("Chanay",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: primaryColor)),
              centerTitle: true,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
              Responsive.isDesktop(context)
                  ? SizedBox(width: defaultPadding / 2)
                  : SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
