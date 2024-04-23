import 'package:first_app/screen/home/home.dart';
import 'package:first_app/ultity/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Audio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(26, 148, 255, 1)),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: text_color
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white,scrolledUnderElevation: 0.0),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xFFDDDDE3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: desc_color),
          ),
        ),         
      ),     
      onGenerateRoute:(settings) {
        switch (settings.name){          
          case Routes.home:
          return MaterialPageRoute(builder:(context) => const HomePage());
          // case Routes.store:
          // return MaterialPageRoute(builder:(context) => const Store());         
          default:
          return MaterialPageRoute(builder:(context) => const HomePage());
        }
      },
    );
  }
}

class Routes {
  static const String home = "/";
}