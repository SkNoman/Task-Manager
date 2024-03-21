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
    return const CustomBG(
      child: Column(
        children: [
          Text('Create Task'),
        ],
      ),
    );
  }
}
