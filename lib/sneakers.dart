import 'package:flutter/material.dart';

class Sneakers extends StatelessWidget {
  const Sneakers({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    final List<Widget> sneakers = [
      sneaker('assets/images/nike-sneakers.png', 'Nike Airmax', 'Ksh. 3500'),
      sneaker("assets/images/nike-air.png", "Nike Airforce", "Ksh. 1500"),
      sneaker("assets/images/nike-airmax.png", "Nike Airmax 90", "Ksh. 4500"),
      sneaker("assets/images/nike-sports.png", "Nike Blazer ", "Ksh. 200")
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 01.1,
          width: MediaQuery.of(context).size.width * 0.93,
          margin: const EdgeInsets.only(left: 20,),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 7,
              mainAxisSpacing: 7,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                // margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () {},
                  child: sneakers[index],
                ),
              );
            },
            itemCount: sneakers.length,
          ),
        ),
      ],
    );
  }

  Widget sneaker(String asset, String snText, String prText) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          Image.asset(
            asset,
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 70),
          Container(
            margin: const EdgeInsets.only(bottom: 45,right: 10,top: 10),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
            ),
          ),
        ]),
        const SizedBox(height: 30),
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
          Text(snText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
          Text(prText)
        ])
      ],
    );
  }
}
