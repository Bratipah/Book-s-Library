import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Search Page'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
