import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var currentIndex = 0;

  void _selectedIndex(int index){
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
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        title: const Row(
          children: [
            Text('Hi', style: TextStyle(fontSize: 15)),
            Text(
              ',Zoey',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      bottomNavigationBar:  Container(
        color: const Color.fromARGB(255, 250, 250, 121),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
              gap: 5,
              backgroundColor: const Color.fromARGB(255, 250, 250, 121),
              activeColor:Colors.grey.shade800,
              tabBackgroundColor: Colors.white,
              onTabChange: _selectedIndex,
              padding: const EdgeInsets.symmetric(horizontal:8, vertical: 10),
              
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: "Shop",
                ),
                GButton(
                  icon: Icons.favorite_outlined,
                  text: "Like",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                ),
              ],),
        ),
      ),
    );
  }
}
