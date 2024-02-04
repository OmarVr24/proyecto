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
      body: ListView(
        padding: EdgeInsets.all(6),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.blue[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToGames(context);
                },
                child: Text(
                  'Go to Games',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.green[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToTournaments(context);
                },
                child: Text(
                  'Go to Tournaments',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.purple[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToPlayers(context);
                },
                child: Text(
                  'Go to Players',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.red[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToCategories(context);
                },
                child: Text(
                  'Go to Categories',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.orange[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToRatings(context);
                },
                child: Text(
                  'Go to Ratings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.grey[500],
            child: Center(
              child: InkWell(
                onTap:() {
                  navigateToTeams(context);
                },
                child: Text(
                  'Go to Teams',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToGames(BuildContext context) {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => Games()));
  }

  void navigateToTournaments(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Tournaments()));
  }
  void navigateToPlayers(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Players()));
  }
  void navigateToCategories(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Categories()));
  }
  void navigateToRatings(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Ratings()));
  }
  void navigateToTeams(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Teams()));
  }
}