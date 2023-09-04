import 'package:flipkart/src/presentation/views/my_rewards/my_rewards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flipkart',
      debugShowCheckedModeBanner: false,
      home: MyRewards(),
    );
  }
}
