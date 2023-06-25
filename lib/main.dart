import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/pages/home_page.dart';
import 'package:sneaker_shop/pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        initialRoute: '/intro',
        routes: {
          '/home': (context) => const HomePage(),
          '/intro': (context) => const IntroPage(),
        },
      ),
    );
  }
}
