import 'package:flutter/material.dart';

class TopbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(0),
        //color: Colors.red,
        width: double.infinity,
        height: 60,
        child: Row(children: <Widget>[
          SizedBox(width: 20,),
          Image(image: AssetImage('assets/LogoInsta.png'), color: Colors.white,),
          Spacer(),
          Icon(Icons.add_box_outlined),
          SizedBox(width: 20,),
          Icon(Icons.favorite_border_rounded),
          SizedBox(width: 20,),
          Icon(Icons.message_outlined),
          SizedBox(width: 20,),
        ],),
      ),
    );
  }
}