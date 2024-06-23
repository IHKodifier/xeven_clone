import 'package:flutter/material.dart';
import 'package:xeven_clone/widgets-export.dart';

final elevatedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color.fromRGBO(247, 127, 251, 1.0),
  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'poppins',
      elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedButtonStyle)),

      home: const Scaffold(
        body: MyCustomScrollView(),
      ),
    );
  }
}
