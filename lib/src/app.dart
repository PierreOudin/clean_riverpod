import 'package:flutter/material.dart';
import 'package:clean_riverpod/src/auth/presentation/view/login_form_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LoginFormPage(null),
    );
  }
}
