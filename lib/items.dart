import 'package:flutter/material.dart ';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: const Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'New Collections',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
