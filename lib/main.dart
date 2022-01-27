import 'package:flutter/material.dart';
//Importaciones propias
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'Content',
      routes: <String, WidgetBuilder>{
        'Login': (BuildContext context) => LoginScreen(),
        'Content': (BuildContext context) => ContentScreen(),
      }
      
    );
  }
}