import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          color: Colors.white),
      child: const Column(
        children: [
          AllExpensesHeader(),
        ],
      ),
    );
  }
}
