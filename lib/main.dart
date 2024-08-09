import 'package:flutter/material.dart';
import 'package:printerest_clone/screens/home_screen.dart';
import 'package:printerest_clone/themes/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
   
darkTheme: darkTheme,
      home: const HomeScreen(),
    );
  }
}
