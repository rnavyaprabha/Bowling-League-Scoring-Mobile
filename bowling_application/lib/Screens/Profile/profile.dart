import 'package:bowling_application/Screens/HomeScreen/components/App_bar.dart';
import 'package:bowling_application/Screens/Profile/components/card.dart';
import 'package:bowling_application/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    int highestScore = 108;
    int matchesPlayed = 100;
    int totalWins = 76;
    double winrate = (totalWins / matchesPlayed) * 100;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: const Text('User Profile'),
      ),
      bottomNavigationBar: AppBarBottom(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 60,
                  color: kPrimaryColor,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      'email',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Cardlike(
                        text: 'Highest Score', value: highestScore.toString()),
                    Cardlike(
                        text: 'Matches Played',
                        value: matchesPlayed.toString()),
                    Cardlike(text: 'Total Wins', value: totalWins.toString()),
                    Cardlike(text: 'Winrate', value: '$winrate%'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
