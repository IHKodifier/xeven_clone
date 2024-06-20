import 'package:flutter/material.dart';
import 'package:xeven_clone/widgets-export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'poppins'),

      home: const Scaffold(
        body: MyCustomScrollView(),
      ),
    );
  }
}
