import 'package:flutter/material.dart';
import 'core/theme/app_themes.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(DisansoApp());
}

class DisansoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disanso',
      theme: AppThemes.lightTheme,
      home: LoginScreen(),
    );
  }
}