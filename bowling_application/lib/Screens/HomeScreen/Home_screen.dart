import 'package:bowling_application/Screens/HomeScreen/components/App_bar.dart';
import 'package:bowling_application/Screens/HomeScreen/components/Games_list.dart';
import 'package:bowling_application/Screens/HomeScreen/components/buttons.dart';
import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Bowling League Pro',
            textAlign: TextAlign.center,
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Buttons(),
              SizedBox(height: 15),
              GamesList(),
            ],
          )),
      bottomNavigationBar: AppBarBottom(),
    );
  }
}
