import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            ProfileHeader(),
            SizedBox(height: 20),
            ProfileCountInfo(),
            SizedBox(height: 20),
            ProfileButtons(),
            SizedBox(height: 20),
            Expanded(child: ProfileTab()),
          ],
        ),
      ),
      endDrawer: ProfileDrawer(),
    );
  }
}

AppBar _buildProfileAppbar() {
  return AppBar(
    leading: Icon(
      Icons.arrow_back_ios,
    ),
    title: Text('Profile'),
    centerTitle: true,
  );
}
