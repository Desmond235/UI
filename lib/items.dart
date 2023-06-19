import 'package:flutter/material.dart ';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'New Collections',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                     image("assets/images/nike-yellow.png", 122),
                    container("ksh.1500", 10, 95),
                  ],
                ),
              ),
              // const SizedBox(width: 10),
              Stack(
                children: [
                  image("assets/images/nike-yellow.png", 80),
                  container("ksh. 750", 10, 15),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget image(String asset, double height) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        asset,
        fit: BoxFit.cover,
        height: height,
      ),
    );
  }

  Widget container(String text, double horizontal, double vertical) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
