import 'package:flutter/material.dart';
import 'package:unstop_clone/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unstop Clone',
      home: const HomePage(),

      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
          titleMedium: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                          ),
          titleSmall:  TextStyle(
                            color: Colors.black,
                            fontSize: 10
                          ),
        ),



        useMaterial3: true,
      ),
    );
  }
}
