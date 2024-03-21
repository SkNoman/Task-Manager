import 'package:flutter/material.dart';
import 'package:task_manager/widgets/custom_bg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBG(
      child: Column(
        children: [
          Center(
            child: Text(
              "Forget passoword screen",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
