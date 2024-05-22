import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      animateFirstPage: true,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomMyCard(),
        ),
      ),
    );
  }
}
