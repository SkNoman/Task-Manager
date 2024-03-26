import 'package:flutter/material.dart';

class Menu {
  String? icon;
  String? title;
  Color? bgColor;
  String? route;

  Menu({this.icon, this.title, this.bgColor, this.route});
  static List<Menu> generateMenus() {
    return [
      Menu(
          icon: 'assets/images/task_icon.png',
          title: 'Tasks',
          bgColor: const Color.fromRGBO(255, 247, 235, 1),
          route: '/taskcreate'),
      Menu(
          icon: 'assets/images/budget_icon.png',
          title: 'Budget',
          bgColor: const Color.fromRGBO(255, 235, 239, 1),
          route: '/budgetpage'),
      Menu(
          icon: 'assets/images/food_icon.png',
          title: 'Food',
          bgColor: const Color.fromRGBO(238, 255, 235, 1)),
      Menu(
          icon: 'assets/images/medical_icon.png',
          title: 'Medical',
          bgColor: const Color.fromRGBO(235, 246, 255, 1)),
      Menu(
          icon: 'assets/images/event_icon.png',
          title: 'Event',
          bgColor: const Color.fromRGBO(241, 241, 241, 1)),
    ];
  }
}
