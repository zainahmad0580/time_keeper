import 'package:flutter/material.dart';
import 'package:time_keeper/utils/route/route_names.dart';
import 'package:time_keeper/view/screens/login_screen.dart';
import 'package:time_keeper/view/screens/signup_screen.dart';
import 'package:time_keeper/view/screens/tab_bar_screens/done_screen.dart';
import 'package:time_keeper/view/screens/home_screen.dart';
import 'package:time_keeper/view/screens/tab_bar_screens/in_progress_screen.dart';
import 'package:time_keeper/view/screens/tab_bar_screens/todo_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case RouteNames.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());
      case RouteNames.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RouteNames.done:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DoneScreen());
      case RouteNames.inProgress:
        return MaterialPageRoute(
            builder: (BuildContext context) => const InProgressScreen());
      case RouteNames.todo:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ToDoScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
