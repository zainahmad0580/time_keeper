import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class MyTaskCard extends StatelessWidget {
  const MyTaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        elevation: 20,
        shadowColor: AppColors.orange,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Text('')),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'AI Lab',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'The app consists of a kanban boarddd that',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              trailing: FittedBox(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_circle, color: AppColors.green)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Expanded(child: SizedBox.shrink()),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: AppColors.red)),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
