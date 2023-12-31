import 'package:flutter/material.dart';
import 'package:ui_design/items.dart';
import 'package:ui_design/google_nav.dart';
import 'package:ui_design/hide_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentIndex = 0;
  late ScrollController controller;

  @override
  void initState(){
    super.initState;
    controller = ScrollController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }


  static const List<Widget> pages = [
    Items(),
    Center(
      child: Text(
        'Add to chart',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
    Center(
      child: Text(
        'Favorite',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
    Center(
      child: Text(
        'Settings',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  ];
  void _selectedIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi', style: TextStyle(fontSize: 13)),
            Text(
              ',\tZoey',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: pages.elementAt(currentIndex)
      ),
      bottomNavigationBar:ScrollToHideNavBar (
        controller: controller,
        child: GoogleNavBar(
          currentIndex: currentIndex,
          selectedIndex: _selectedIndex,
        ),
      ),
    );
  }
}
