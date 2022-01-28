import 'package:flutter/material.dart';

//Estados
class Estados extends StatelessWidget {
  const Estados({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          EstilosEstado(imagenEstado: 'assets/carro.jpg', usuario: 'renault_',),
          SizedBox(width: 10,),
          EstilosEstado(imagenEstado: 'assets/lucho.jpg', usuario: 'soyChortis_',),
          SizedBox(width: 10,),
          // EstilosEstado(imagenEstado: 'assets/paisaje.jpg', usuario: 'col_123',),
          // SizedBox(width: 10,),
          EstilosEstado(imagenEstado: 'assets/niño.png', usuario: 'janfry_of',),
          SizedBox(width: 10,),
          EstilosEstado(imagenEstado: 'assets/lobo.jpg', usuario: '_wolf_',),
          SizedBox(width: 10,),
          EstilosEstado(imagenEstado: 'assets/pipe.jpg', usuario: '_Mike_W',),
        ],
      ),
    );
  }
}


//Estilo de los estados
class EstilosEstado extends StatelessWidget {

  final String imagenEstado;
  final String usuario;


  EstilosEstado({
    Key? key,
    required this.imagenEstado,
    required this.usuario,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Stack(
            children: [
              _FondoDegradado(),
              Positioned(
                top:5,
                left:5,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(50),
                  child: Container(
                    width: 65,
                    height: 65,
                    child: Image(image: AssetImage(imagenEstado),fit: BoxFit.cover,),
                  ),
                ),
              ),
            ],
          )
        ),
        Text(usuario), 
      ],
    );
  }
}

//Degradado fondo Imagen
class _FondoDegradado extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(200),
      gradient: LinearGradient(colors: [
        Colors.amber.shade700,
        Colors.red.shade700,
      ])
      )
    );
  }
}