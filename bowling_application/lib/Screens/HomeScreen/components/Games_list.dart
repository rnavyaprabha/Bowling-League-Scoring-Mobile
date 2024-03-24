import 'package:bowling_application/Screens/HomeScreen/components/card_item.dart';
import 'package:flutter/material.dart';

class GamesList extends StatelessWidget {
  const GamesList({super.key});
  @override
  Widget build(BuildContext context) {
    return CardItem(
        date: DateTime.now(),
        points: 125.toString(),
        user1: 'Ramesh',
        user2: 'Suresh');
  }
}
