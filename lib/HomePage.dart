import 'package:flutter/material.dart';
import 'Games.dart';
import 'Tournaments.dart';
import 'Players.dart';
import 'Categories.dart';
import 'Ratings.dart';
import 'Teams.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      body: ListView(
        padding: EdgeInsets.all(6),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              navigateToGames(context);
            },
            child: Container(
              height: 50,
              color: Color.fromARGB(255, 89, 90, 90),
              child: Center(
                child: Text(
                  'Go to Games',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToCategories(context);
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 118, 118, 118),
              child: Center(
                child: Text(
                  'Go to Categories',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToPlayers(context);
            },
            child: Container(
              height: 50,
              color: Color.fromARGB(255, 89, 90, 90),
              child: Center(
                child: Text(
                  'Go to Players',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToRatings(context);
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 118, 118, 118),
              child: Center(
                child: Text(
                  'Go to Ratings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToTeams(context);
            },
            child: Container(
              height: 50,
              color: Color.fromARGB(255, 89, 90, 90),
              child: Center(
                child: Text(
                  'Go to Teams',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToTournaments(context);
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 118, 118, 118),
              child: Center(
                child: Text(
                  'Go to Tournaments',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToGames(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Games()));
  }

  void navigateToTournaments(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Tournaments()));
  }

  void navigateToPlayers(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Players()));
  }

  void navigateToCategories(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Categories()));
  }

  void navigateToRatings(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Ratings()));
  }

  void navigateToTeams(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Teams()));
  }
}
