import 'package:flutter/material.dart';
import 'package:proyecto/components/drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(),
        ),
      ),
      body: Center(
        child: Text('Home Page Content'),
      ),
      drawer: DrawerNavigationBar(),
    );
  }
}
