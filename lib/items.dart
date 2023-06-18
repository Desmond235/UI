import 'package:flutter/material.dart ';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child:  Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const  Text(
            'New Collections',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              ClipRRect(
                borderRadius:BorderRadius.circular(20) ,
                child: Image.asset("assets/images/pexels.jpg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
