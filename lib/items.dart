import 'package:flutter/material.dart ';
import 'package:ui_design/image_text.dart';
import 'package:ui_design/category.dart';
import 'package:ui_design/sneakers.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  final color = const Color.fromARGB(213, 255, 255, 164);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'New Collections',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              //  height: MediaQuery.of(context).size.height/3.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 15),
                  Stack(
                    children: [
                      image("assets/images/pexels.jpg", 200, 180),
                      container("ksh.1500", 10, 150),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            image("assets/images/nike-yellow.png", 200, 80),
                            container("ksh. 750", 10, 50),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Stack(
                                children: [
                                  image("assets/images/nike-red.jpeg", 120, 70),
                                  container("ksh. 450", 10, 10),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: const Icon(Icons.arrow_right_alt),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Category(),
            const SizedBox(height: 10),
            logo(context, color),
            const SizedBox(height: 10,),
            Sneakers(color: color)
          ],
        ),
      ),
    );
  }
}
