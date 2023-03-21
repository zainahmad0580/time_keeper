import 'package:intl/intl.dart';

final DateTime now = DateTime.now();

String getDate() {
  final DateFormat formatter = DateFormat.MMMEd();
  String date = formatter.format(now);
  return date;
}
