import 'package:flutter/material.dart';
import 'package:smart_home/app/core/ui/app_theme.dart';
import 'package:smart_home/app/pages/login/login_page.dart';


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
      title: 'Smart Home',
      theme: ThemeData(primaryColor: ThemeColors.primaryColor, fontFamily: 'PTSans'),
      home: const LoginPage(),
    );
  }
}