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
            Expanded(
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index){
                    return Publicaciones();
                  },
                  ),
              ),
              ),
            // const Publicaciones(),
            // Expanded(child: Container()),
            const navegacion()
          ],
        ),
      ),
    );
  }
}


