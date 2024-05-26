import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<AllExpensesItemModel> itemList = [
    const AllExpensesItemModel(
        title: "Balance",
        subtitle: "April 2022",
        image: Assets.imagesBalance,
        price: 20.129),
    const AllExpensesItemModel(
        title: "Income",
        subtitle: "April 2022",
        image: Assets.imagesIncome,
        price: 20.129),
    const AllExpensesItemModel(
        title: "Expenses",
        subtitle: "April 2022",
        image: Assets.imagesExpenses,
        price: 20.129),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: itemList[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: itemList[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: itemList[2],
            ),
          ),
        )
      ],
    );
    
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}