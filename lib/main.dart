import 'package:flutter/material.dart';
import 'package:tiktok/features/main_page/presentations/pages/home/presentations/home.dart';
import 'package:tiktok/features/main_page/presentations/pages/main_page.dart';
import 'package:tiktok/gestion_etat/set_state/counter_page.dart';
import 'features/authentification/presentation/pages/login_page.dart';
import 'features/authentification/presentation/pages/signup_page.dart';


// fonction principale main()
void main() {
  runApp(const MyApp());
}
// fin de main


// classe MyApp : point d'entrée de l'application, qui construit le widget racine de l'application
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // constructeur de MyApp

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiktok clone',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.white),
        ),
     home: CounterPage(),
     //initialRoute: '/signup',
     routes: {
        '/home' : (context) => Home(),
        '/main' : (context) => MainPage(),
        '/signup' : (context) => SignUpPage(),
        '/login' : (context) => LoginPage(),
     },
    );
  }
}

