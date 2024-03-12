import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';

class Cardlike extends StatelessWidget {
  const Cardlike({super.key, required this.text, required this.value});
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: kPrimaryColor),
            ),
            Text(
              value,
              style: TextStyle(color: kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
