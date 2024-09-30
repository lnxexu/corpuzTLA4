import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/details.dart';
import 'screens/profile.dart';
import 'screens/recentProjects.dart';
import 'screens/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tabs',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Portfolio'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Details'),
              Tab(text: 'My Playlist'),
              Tab(text: 'Recent Projects'),
              Tab(text: 'Contacts'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(),
            DetailsTab(),
            ProfileTab(),
            SettingsTab(),
            AboutTab(),
          ],
        ),
      ),
    );
  }
}
