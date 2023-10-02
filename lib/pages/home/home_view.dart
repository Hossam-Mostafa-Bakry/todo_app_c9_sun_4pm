import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'widgets/task_item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment(0, 2),
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              height: 170,
              color: theme.primaryColor,
              child: Text(
                "To Do List",
                style: theme.textTheme.titleLarge,
              ),
            ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(
                const Duration(days: 365),
              ),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.black87,
              dayColor: Colors.black87,
              activeDayColor: theme.primaryColor,
              activeBackgroundDayColor: Colors.white,
              dotsColor: Colors.white,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en_ISO',
            )
          ],
        ),
        const SizedBox(height: 50),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => TaskItemWidget(),
            itemCount: 20,
          ),
        )
      ],
    );
  }
}
