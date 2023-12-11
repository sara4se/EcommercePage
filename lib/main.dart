import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'appinjector.dart';
import 'components/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppInjector(
        child: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
