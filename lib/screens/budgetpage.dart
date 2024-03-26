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
    return CustomBG(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              'This page is under development',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
