import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Logo Instagram
              Container(
                color: Colors.red,
                height: 150,
                width: 200,
                child: Column(
                  children:[                    
                    Image(image: AssetImage('assets/LogoInsta.png'), color: Colors.white,fit: BoxFit.cover,),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Texto email
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[800],
                        // hintStyle: TextStyle(color: Colors.blue),
                        hintText: 'Enter your email',
                        border: InputBorder.none, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Texto Password
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[800],
                        hintText: 'Enter your Password',
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Boton Login
              MaterialButton(
                onPressed: (){},
                color: Colors.lightBlue,
                minWidth: 300.0,
                child: Text('Log in'),
              ),
              //Expanded
              Expanded(child: Container()),
              //Texto Sing In
              Container(
                child: Column(
                  children: [
                    Text('Don´t have an account?Sing up.')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}