

import 'package:flutter/material.dart';
import 'package:xeven_clone/widgets-export.dart';

class MyCustomScrollView extends StatefulWidget {
  const MyCustomScrollView({super.key});

  @override
  State<MyCustomScrollView> createState() => _MyCustomScrollViewState();
}

class _MyCustomScrollViewState extends State<MyCustomScrollView> {
  // State variable to manage the children of the Stack
  List<Widget> _stackChildren = [
    const HomeScreen(), // Main content of the home screen
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverAppBar is already part of the CustomScrollView
        SliverAppBar(
          title: Column(
            children: [
               Text('Xeven',
               style: Theme.of(context).textTheme.displaySmall,
              ),
               Text('Solutions',
               style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          expandedHeight: 200,
          // Use flexibleSpace to control the SliverAppBar's layout
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF5F5F5),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            // child: const Center(
            //   child: Text(
            //     'Xeven App Bar',
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
          ),
        ),

        SliverToBoxAdapter(
          child: Stack(
            key: const Key('myStack'), // Add a unique key
            children: [
              // Place HomeScreen directly in the Stack
              _stackChildren[0], // Access the HomeScreen from the state
            ],
          ),
        ),
      ],
    );
  }

  // Method to update the state and rebuild the widget
  void updateStackChildren(List<Widget> newChildren) {
    setState(() {
      _stackChildren = newChildren;
    });
  }
}