import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout,});
final WidgetBuilder mobileLayout , tabletLayout , desktopLayout ;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
 
      if (constraints.maxWidth < 600) {
        return  Padding(
          padding: kMainPadding,
          child: mobileLayout(context),
        );
      } else if (constraints.maxWidth < 900) {
        return  Padding(
          padding: kMainPadding,
          child: tabletLayout(context),
        );
      } else {
        return  Padding(
          padding: kMainPadding,
          child: desktopLayout(context),
        );
      }
    });
  }
}