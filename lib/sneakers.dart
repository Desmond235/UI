import 'package:flutter/material.dart';

class Sneakers extends StatelessWidget {
  const Sneakers({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    final List<Widget> sneakers = [
      sneaker('assets/images/nike-sneakers.png', 'Nike Airmax', 'Ksh. 3500'),
      sneaker("assets/images/nike-air.png", "Nike Airforce", "Ksh. 1500"),
      Column(
        children: [
          Row(
            children: [
              sneaker("assets/images/nike-airmax.png", "Nike Airmax 90",
                  "Ksh. 4500"),
              sneaker(
                  "assets/images/nike-sports.png", "Nike Blazer ", "Ksh. 200"),
            ],
          )
        ],
      )
    ];
    return SizedBox(
      height: 150,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: color,
            child: sneakers[index],
          );
        },
      ),
    );
  }

  Widget sneaker(String asset, String snText, String prText) {
    return Row(
      children: [
        Image.asset(
          asset,
          width: 100,
          height: 50,
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.favorite_border_outlined,
          color: Colors.red,
        ),
        Column(
          children: [
            const SizedBox(height: 30),
            Text(snText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            Text(prText),
          ],
        )
      ],
    );
  }
}
