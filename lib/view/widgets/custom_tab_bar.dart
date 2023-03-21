import 'package:flutter/material.dart';
import 'package:time_keeper/utils/app_colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        labelColor: AppColors.white,
        indicatorColor: AppColors.primaryColor,
        tabs: [
          Tab(
              child: FittedBox(
            child: Row(
              children: [
                Text('To Do'),
                SizedBox(width: 10),
                Icon(Icons.assignment_add)
              ],
            ),
          )),
          Tab(
              child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('In Progress'),
                SizedBox(width: 10),
                Icon(Icons.autorenew)
              ],
            ),
          )),
          Tab(
              child: FittedBox(
            child: Row(
              children: [Text('Done'), SizedBox(width: 10), Icon(Icons.done)],
            ),
          ))
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
