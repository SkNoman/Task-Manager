import 'package:flutter/material.dart';
import 'package:task_manager/widgets/custom_bg.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomBG(
      child: Column(
        children: [
          Text('Budget Page'),
        ],
      ),
    );
  }
}
