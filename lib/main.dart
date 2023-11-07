import 'package:flutter/material.dart';
import 'package:pos/components/Types_of_services.dart';
import 'package:pos/components/corsore.dart';
import 'package:pos/pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
