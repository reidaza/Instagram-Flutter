import 'package:flutter/material.dart';
//Importaciones Propias
import 'package:flutter_instagram/widgets/widgets.dart';

class ContentScreen extends StatelessWidget {

final colorIcon = Colors.white;

  const ContentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            //Logo y iconos instagram
            TopbarWidget(),
            //Scroll Estados
            const Estados(),
            Publicaciones(),
            Expanded(child: Container()),
            const navegacion()
          ],
        ),
      ),
    );
  }
}


