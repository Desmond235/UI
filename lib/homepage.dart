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
        title: const  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi', style: TextStyle(fontSize: 15)),
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
      bottomNavigationBar:  Container(
        color: const Color.fromARGB(255, 255, 255, 150),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
              
              backgroundColor: const Color.fromARGB(240, 255, 255, 150),
              activeColor:Colors.grey.shade800,
              tabBackgroundColor: Colors.white,
              onTabChange: _selectedIndex,
              padding: const EdgeInsets.symmetric(horizontal:15, vertical: 15),
              
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "\t\tHome",
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: "\t\tShop",
                ),
                GButton(
                  icon: Icons.favorite,
                  text: "\t\tLike",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "\t\tSettings",
                ),
              ],),
        ),
      ),
    );
  }
}
