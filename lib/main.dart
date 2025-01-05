import 'package:flutter/material.dart';
import 'package:news_app/apptheme.dart';
import 'package:news_app/home_screen.dart';

void main() {
  runApp( NewsApp());
}

class NewsApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_) =>HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: Apptheme.lightTheme,
      themeMode: ThemeMode.light,
      
    );}}