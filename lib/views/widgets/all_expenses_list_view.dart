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
      children: itemList.asMap().entries.map((e) {
        int index = e.key;
        var itemList = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  itemModel: itemList,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesItem(
                itemModel: itemList,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
