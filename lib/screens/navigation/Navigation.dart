import 'package:flutter/material.dart';
import 'package:test_ui/screens/home/components/landing_page.dart';
import 'package:test_ui/screens/navigation/components/side_navBar.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';

class Navigation extends StatefulWidget {

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books Library'),
      ),
      drawer:SideNavBar(),
      body: LandingPage(),
      bottomNavigationBar:BottomNavigation(),
    );
  }
}
