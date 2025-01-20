import 'package:flutter/material.dart';
import 'package:myapp/pages/first_page.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/profile_page.dart';
import 'package:myapp/pages/settings.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => Homepage(),
        '/settings': (context) => Settings(),
        '/profile': (context) => ProfilePage()
      },
    );
  }
}
