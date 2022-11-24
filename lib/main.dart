import 'package:all_ui/ui/buttonscreen.dart';
import 'package:flutter/material.dart';
 main(){
  runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buttonscreen(),
    );
  }
}