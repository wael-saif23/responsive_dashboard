import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/custom_buttom.dart';
import 'package:responsive_dashboard/views/widgets/custom_title_text_field.dart';

class QuickInvicerForm extends StatelessWidget {
  const QuickInvicerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
              title: 'Customer name',
              hintText: 'Type customer name',
                        ),
            ),SizedBox(width: 16,),
         Expanded(
           child: CustomTitleTextField(
              title: 'Customer Email',
              hintText: 'Type customer email',
            ),
         ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
              title: 'Item name',
              hintText: 'Type customer name',
                        ),
            ),SizedBox(width: 16,),
         Expanded(
           child: CustomTitleTextField(
              title: 'Item mount',
              hintText: 'USD',
            ),
         ),
          ],
        ),
        Row(
          children: [
Expanded(child: CustomButtom(text: 'Send Money',)),
          ],)
      ],
    );
  }
}