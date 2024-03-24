import 'package:bowling_application/Screens/HomeScreen/components/date_time.dart';
import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.date,
    required this.points,
    required this.user1,
    required this.user2,
  });
  final DateTime date;
  final String points;
  final String user1;
  final String user2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Datetime(date: date),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user1,
                        style: TextStyle(fontSize: 18, color: kPrimaryColor),
                      ),
                      Text(
                        user2,
                        style: TextStyle(fontSize: 18, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  Text(
                    points,
                    style: TextStyle(fontSize: 40, color: kPrimaryColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
