import 'package:flutter/material.dart';
import 'pixPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: const Color.fromARGB(255, 226, 171, 53),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'YourTime'),
    );
  }
}
