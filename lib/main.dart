import 'package:flutter/material.dart';
import 'package:novah/pages/home_page.dart';
import 'package:novah/pages/wrapper.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade50),
        useMaterial3: true,
      ),
      home: const Wrapper(),
    );
  }
}
