import 'package:articals/app/index.dart';
import 'package:articals/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  // MyApp._internal();

  // static final MyApp instance = MyApp._internal();

  // factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getThemeAplecation(),
      home: const IndexScreen(),
    );
  }
}
