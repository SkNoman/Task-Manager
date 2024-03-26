import 'package:flutter/material.dart';
import 'package:task_manager/widgets/custom_bg.dart';

class TaskCreate extends StatefulWidget {
  const TaskCreate({super.key});

  @override
  State<TaskCreate> createState() => _TaskCreateState();
}

class _TaskCreateState extends State<TaskCreate> {
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
