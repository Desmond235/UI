import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({Key? key, required this.currentIndex,required this.selectedIndex}) : super(key: key);

 final Color color = const Color.fromARGB(238, 250, 250, 174);
 final int currentIndex ;
 final void Function(int index) selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            backgroundColor: color,
            activeColor: Colors.grey.shade800,
            tabBackgroundColor: Colors.white,
            selectedIndex: currentIndex,
            onTabChange: selectedIndex,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
            ],
          ),
        ),
      );
  }
}