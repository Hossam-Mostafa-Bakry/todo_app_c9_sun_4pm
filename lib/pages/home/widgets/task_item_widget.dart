import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFEC4B4B),
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [Color(0xFFEC4B4B), Colors.amber],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.5, 0.5],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: const Color(0xFFEC4B4B),
              borderRadius: BorderRadius.circular(15.0),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          ],
        ),
        child: Container(
          height: 115,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 65,
                width: 5,
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Play basket ball",
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      "go to club with your friends go to club with your friends go to club with your friends",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(height: 1.1),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          size: 16,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "10:30 AM",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 15),
              Container(
                width: 70,
                height: 35,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/check_icon.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
