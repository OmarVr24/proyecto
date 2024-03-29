import 'package:flutter/material.dart';
import 'package:proyecto/Profile.dart';
import 'package:proyecto/components/drawer.dart';
import 'Games.dart';
import 'Tournaments.dart';
import 'Players.dart';
import 'Categories.dart';
import 'Ratings.dart';
import 'Teams.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Page Content'),
      ),
      drawer: DrawerNavigationBar(),
    );
  }
}
