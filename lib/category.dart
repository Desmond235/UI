import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/puma-logo.png',
      'assets/images/jordan-logo.png',
      'assets/images/nikeLogo.png',
      'assets/images/adidas-logo.png'
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(238, 250, 250, 174),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
           const Row(
            children: [
               Text(
                'Choose Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5,),
               Expanded(
                child: InkWell(child: Row(
                  children: [
                    Text('data'),
                    Icon(Icons.arrow_right)
                  ],
                )),
              ),
            ],
          ),
          Row(
            children: [
              ListView.builder(
                itemBuilder: (context, int index) {
                  return Image(
                    width: 10,
                    height: 10,
                    image: AssetImage(images[index]),
                  );
                },
                itemCount: images.length,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
