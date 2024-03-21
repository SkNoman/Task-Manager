import 'package:flutter/material.dart';

class Menu {
  IconData? icon;
  String? title;
  Color? bgColor;

  Menu({this.icon, this.title, this.bgColor});
  static List<Menu> generateMenus() {
    return [
      Menu(
          icon: Icons.task,
          title: 'Tasks',
          bgColor: const Color.fromARGB(255, 241, 233, 156)),
      Menu(
          icon: Icons.money,
          title: 'Budget',
          bgColor: const Color.fromARGB(255, 240, 172, 242)),
      Menu(
          icon: Icons.food_bank,
          title: 'Food',
          bgColor: const Color.fromARGB(255, 148, 239, 156)),
      Menu(
          icon: Icons.medical_information,
          title: 'Medical',
          bgColor: const Color.fromARGB(255, 141, 168, 243)),
      Menu(
          icon: Icons.event,
          title: 'Event',
          bgColor: const Color.fromARGB(255, 172, 174, 171)),
    ];
  }
}
