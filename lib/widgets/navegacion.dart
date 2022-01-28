import 'package:flutter/material.dart';

class navegacion extends StatelessWidget {
  const navegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(onPressed: ()=> Navigator.pop(context),
          child: const Icon(Icons.house_rounded),
          ),
          const Icon(Icons.search_outlined),
          const Icon(Icons.slow_motion_video_outlined),
          const Icon(Icons.shopping_bag_outlined),                
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 25,
              width: 25,
              child: const Image(image: AssetImage('assets/pipe.jpg'), fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}