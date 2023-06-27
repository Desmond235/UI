import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25,),
      width: MediaQuery.of(context).size.width ,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Choose Category',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: InkWell(
              
              onTap: (){},
                child: const Row(
                  children: [
                    SizedBox(width: 190,),
                    Text('See more'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_right)
                  ],
                )),
          ),
           const SizedBox(height: 50,)
        ],
      ),
    );
  }
}

Widget logo( BuildContext context,Color color) {
  List<String> images = [
    'assets/images/puma-logo.png',
    'assets/images/jordan-logo.png',
    'assets/images/nikeLogo.png',
    'assets/images/adidas-logo.png'
  ];
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Row(
       
      children: [
        const SizedBox(height: 15),
        SizedBox(
          height: 55,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              return Container(
                margin: const EdgeInsets.only(left: 20,),
                padding: const EdgeInsets.all(10),
                width: 90,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: color,
                
                ),
                child: InkWell(
                  onTap: (){},
                  child: Image(
                    width: 50,
                    height: 20,
                    color: Colors.grey[800],
                    image: AssetImage(images[index]),
                  ),
                ),
              );
            },
            itemCount: images.length,
          ),
        ),
      ],
    ),
  );
}
