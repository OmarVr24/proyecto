import 'package:flutter/material.dart';
import 'package:proyecto/HomePage.dart';
import 'package:proyecto/Profile.dart';

class DrawerNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add items to the side navigation drawer
      child: Container(
        color: Colors.grey[700],
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Logo',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page 1'),
            )
          ],
        ),
      ),
    );
  }
}
