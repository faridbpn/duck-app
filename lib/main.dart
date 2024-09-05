import 'package:app_orisinil_mas_farid/contact_dart.dart';
import 'package:app_orisinil_mas_farid/intro1.dart';
import 'package:app_orisinil_mas_farid/intro2.dart';
import 'package:app_orisinil_mas_farid/intro3.dart';
import 'package:app_orisinil_mas_farid/pages/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      routes: {
         '/start': (context) => const Intro1(),
        '/welcome': (context) => const Intro2(),
        '/diveto': (context) => const Intro3(),
        '/contact': (context) => Contact(),
        '/product': (context) => ProductPage(),
      }
      ,
    );
  }
}
