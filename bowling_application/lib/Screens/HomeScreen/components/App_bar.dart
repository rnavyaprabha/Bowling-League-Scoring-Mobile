import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 242, 249),
      ),
      height: 56.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.emoji_events,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
