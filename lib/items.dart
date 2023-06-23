import 'package:flutter/material.dart ';
import 'package:ui_design/image_text.dart';
import 'package:ui_design/category.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
            const SizedBox(
              height: 25
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15
                ),
                Stack(
                  children: [
                    image("assets/images/pexels.jpg", 200, 185),
                    container("ksh.1500", 10, 150),
                  ],
                ),
                const SizedBox(width: 30),
                Container(
                  margin: const EdgeInsets.only(bottom: 135),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          image(
                            "assets/images/nike-yellow.png",
                            200,
                            80
                          ),
                          container("ksh. 750", 10, 43),
                        ],
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Stack(
                              children: [
                                Container(
                                  child: image(
                                    "assets/images/nike-red.jpeg",
                                    120,
                                    70
                                  ),
                                ),
                                container("ksh. 450", 10, 10),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(238, 250, 250, 174),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:  InkWell(
                              onTap: (){},
                              child: const Icon(Icons.arrow_right_alt),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Category(),
            logo(context)
          ],
        ),
      ),
    );
  }
}
