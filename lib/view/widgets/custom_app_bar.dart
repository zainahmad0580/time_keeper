import 'package:flutter/material.dart';

import '../../model/functions/get_date.dart';
import '../../utils/app_colors.dart';
import 'custom_tab_bar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(getDate()),
      bottom: const CustomTabBar(),
      actions: const [
        Padding(padding: EdgeInsets.all(10), child: Icon(Icons.more_vert))
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
