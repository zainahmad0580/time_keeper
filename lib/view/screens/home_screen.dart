import 'package:flutter/material.dart';
import 'package:time_keeper/view/screens/tab_bar_screens/done_screen.dart';
import 'package:time_keeper/view/screens/tab_bar_screens/in_progress_screen.dart';
import 'package:time_keeper/view/widgets/custom_app_bar.dart';
import 'tab_bar_screens/todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            drawer: const Drawer(),
            appBar: const CustomAppBar(),
            body: const TabBarView(
                children: [ToDoScreen(), InProgressScreen(), DoneScreen()])));
  }
}
