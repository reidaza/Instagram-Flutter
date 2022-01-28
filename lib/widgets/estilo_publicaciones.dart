import 'package:flutter/material.dart';

class Publicaciones extends StatelessWidget {
  const Publicaciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EstiloPublicaciones(imagenavatar: 'assets/pipe.jpg', nickname: 'soyChortis_', post: 'lobo.jpg'),
        // EstiloPublicaciones(imagenavatar: 'assets/niño.png', nickname: 'janfry_of', post: 'paisaje.jpg'),
      ],
    );
  }
}




class EstiloPublicaciones extends StatelessWidget {


  final String imagenavatar;
  final String nickname;
  final String post;

  EstiloPublicaciones({
    Key? key,
    required this.imagenavatar,
    required this.nickname,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var estiloTexto = TextStyle(fontWeight: FontWeight.bold);
    return Column(
      children: [
        SizedBox(height: 15,),                
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              //Imagen Avatar
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 30,
                  width: 30,
                  child: Image(image: AssetImage(imagenavatar), fit: BoxFit.cover,),
                ),
              ),
              //NickName
              SizedBox(width: 5,),
              Text(nickname),
              Expanded(child: Container()),
              Icon(Icons.more_vert_outlined),
            ],
          ),
        ),
        SizedBox(height: 5,),
        Column(
          children: [
            Image(image: AssetImage(post))
          ],
        ),
        SizedBox(height: 5,),
        //Iconos debajo de imagen
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(Icons.favorite_outline_rounded),
              SizedBox(width: 10,),
              Icon(Icons.comment_outlined),
              SizedBox(width: 10,),
              Icon(Icons.send),
              Expanded(child: Container()),
              Icon(Icons.save_alt)
            ],
          ),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('1.255 Me gusta', style: estiloTexto,),
              SizedBox(height: 5,),
              Text('$nickname  Officia do duis magna deserunt occaecat nostrud sint consectetur pariatur magna eu anim deserunt sint. Laboris quis cillum laboris irure do ex ad voluptate ullamco minim tempor esse. Exercitation do veniam aliqua Lorem ad sint sunt non in sint. Magna veniam sunt reprehenderit et quis.',),
              SizedBox(height: 5,),
              Text('Ver los 56 comentarios'),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ],
    );
  }
}
