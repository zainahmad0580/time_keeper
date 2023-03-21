import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class InProgressScreen extends StatelessWidget {
  const InProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          for (int i = 0; i < 10; i++)
            Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                elevation: 20,
                shadowColor: AppColors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  color: AppColors.green,
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
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.square, color: AppColors.red)),
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
                          Text('06:27:30')
                        ],
                      ),
                    )
                  ],
                )),
        ],
      ),
    );
  }
}
