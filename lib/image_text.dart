import 'package:flutter/material.dart ';
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
          color: const Color.fromARGB(171, 0, 0, 0),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(226, 255, 255, 255)),
      ),
    );
  }

