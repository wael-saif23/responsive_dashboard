import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transection_model.dart';
import 'package:responsive_dashboard/views/widgets/transection_item.dart';

class TransectionHistoryListView extends StatelessWidget {
  const TransectionHistoryListView({super.key});
  static const List<TransectionModel> transectionItems = [
    TransectionModel(
        title: 'Grocery shopping',
        date: 'Today - 12:30 PM',
        amount: '- \$ 30.00',
        isWithDrawal: true),
    TransectionModel(
        title: 'Monthly salary',
        date: 'Today - 12:30 PM',
        amount: '+ \$ 500.00',
        isWithDrawal: false),
    TransectionModel(
        title: 'Juni Mobile App project',
        date: 'Today - 12:30 PM',
        amount: '+ \$ 500.00',
        isWithDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transectionItems
          .map((e) => TransectionItem(transectionModel: e))
          .toList(),
    );
  
  }
}
