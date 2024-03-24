import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMM();
final time = DateFormat().add_jm();

class Datetime extends StatelessWidget {
  const Datetime({super.key, required this.date});
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: kPrimaryColor, // Border color
              width: 0.5, // Border width
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                date.day.toString(),
                style: TextStyle(color: kPrimaryColor),
              ),
              SizedBox(width: 5),
              Text(
                formatter.format(date).toString(),
                style: TextStyle(color: kPrimaryColor),
              )
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: kPrimaryColor, // Border color
              width: 0.5, // Border width
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                time.format(date).toString(),
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
