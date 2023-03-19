import 'package:flutter/material.dart';
import 'package:myelin_web/constants/size.dart';


class ResponsiveWidget extends StatelessWidget {

  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;



  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeScreenSize;
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= largeScreenSize) {
          return largeScreen;
        } else if (constraints.maxWidth < largeScreenSize &&
            constraints.maxWidth >= mediumScreenSize) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}