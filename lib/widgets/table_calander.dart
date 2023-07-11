import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class CustomTableCalender extends StatelessWidget {
  const CustomTableCalender():super();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height:400, 
        width: 350,
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          calendarFormat: CalendarFormat.month,
          calendarStyle: const CalendarStyle(
          ),
        ),
      ),
    );
  }
}