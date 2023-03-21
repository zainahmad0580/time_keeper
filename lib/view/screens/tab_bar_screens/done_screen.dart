import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print('screenwidth: $screenWidth');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CalendarTimeline(
              //leftMargin: screenWidth / 2.5,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020, 1, 1),
              lastDate: DateTime(2030, 12, 31),
              onDateSelected: (date) => print(date),
              monthColor: AppColors.lightOrange,
              dayColor: AppColors.lightOrange,
              activeDayColor: Colors.white,
              activeBackgroundDayColor: AppColors.orange,
              dotsColor: AppColors.white,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en_ISO',
            ),
          ),
          const Divider(thickness: 2),
          for (int i = 0; i < 10; i++)
            Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                elevation: 20,
                shadowColor: AppColors.primaryColor,
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
                                  color: AppColors.primaryColor,
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
                      trailing:
                          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                    ),
                  ],
                )),
        ],
      ),
    );
  }
}
