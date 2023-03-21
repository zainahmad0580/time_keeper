import 'dart:async';

import 'package:flutter/material.dart';
import 'package:time_keeper/utils/app_colors.dart';

import '../../widgets/my_task_card.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [MyTaskCard()],
      ),
    );
  }
}
