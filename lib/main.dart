import 'package:flutter/material.dart';
import 'package:health_app/screens/main_menu_page.dart';


void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff101419),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MainMenuPage(),
      },
    );
  }
}

