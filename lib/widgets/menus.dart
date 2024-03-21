import 'package:flutter/material.dart';
import 'package:task_manager/model/menu_item.dart';

class Menus extends StatelessWidget {
  final menuList = Menu.generateMenus();
  Menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        itemCount: menuList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => _buildMenu(context, menuList[index]),
      ),
    );
  }
}

Widget _buildMenu(
  BuildContext context,
  Menu menuList,
) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: menuList.bgColor, borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.center, child: Icon(menuList.icon, size: 40)),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            menuList.title.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
  );
}
