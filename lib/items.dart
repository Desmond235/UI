import 'package:flutter/material.dart ';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left:20),
            child: const Text(
              'New Collections',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(width: 15,),
              Stack(
                children: [
                  Positioned(
                    child: image("assets/images/pexels.jpg", 200, 150),
                  ),
                   container("ksh.1500", 20, 100),
                ],
              ),
              const SizedBox(width: 100),
              Stack(
                children: [
                  image(
                    "assets/images/nike-yellow.png",
                    200,
                    80,
                  ),
                  container("ksh. 750", 10, 15),
                ],
              ),
              const SizedBox(width:10),
            ],
          ),
        ],
      ),
    );
  }

  Widget image(
    String asset,
    double width,
    double height,
  ) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(asset,
              // alignment: Alignment.center,
              fit: BoxFit.cover,
              height: height,
              width: width),
        ),
      ],
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
