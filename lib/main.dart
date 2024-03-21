import 'package:flutter/material.dart';
import 'package:task_manager/screens/dashboard.dart';
import 'package:task_manager/screens/forget_password.dart';
import 'package:task_manager/screens/signin_screen.dart';
import 'package:task_manager/screens/signup_screen.dart';
import 'package:task_manager/screens/task_create.dart';
import 'package:task_manager/screens/welcome_screen.dart';
import 'package:task_manager/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Walton Task Manager',
      theme: lightMode,
      home: const WelcomeScreen(),
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgetpassword': (context) => const ForgetPasswordScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/taskcreate': (context) => const TaskCreate(),
      },
    );
  }
}
