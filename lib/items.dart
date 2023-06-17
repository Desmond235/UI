import 'package:flutter/material.dart ';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Home',
            style: TextStyle(fontSize: 25),
          ),
        )
      ],
    );
  }
}
