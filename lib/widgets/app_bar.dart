import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xeven_clone/widgets-export.dart';

class XevenAppBar extends StatefulWidget {
  const XevenAppBar({super.key});

  @override
  State<XevenAppBar> createState() => _XevenAppBarState();
}

class _XevenAppBarState extends State<XevenAppBar> {
  bool isHovered = false;
  List<String> tabs = [
    'Services',
    'Salesforce',
    'Industries',
    'Portfolio',
    'Company',
    'Resources'
  ];

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        color: !isHovered ? Colors.transparent : Colors.white,
        height: isHovered ? 130 : 120,
        width: MediaQuery.of(context).size.width,
        duration: Durations.long1,
        curve: Curves.easeInOut,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              
              const SizedBox(
                width: 100,),
              const XevenLogo(),
              const SizedBox(
                width: 100,
              ),
              ...tabs
                  .map((tab) => TextButton(
                        onPressed: () {},
                        child: Text(
                          tab,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ))
                  .toList() as List<Widget>,
              
              const SizedBox(
                width: 10,
              ), 

              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              const SizedBox(
                width: 10,
              ), 
              IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
              Text(
                '1-267-800-0191',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Contact Us')),
              const SizedBox(
                width: 10,
              ), 
               const Spacer(flex:3),
            ],
          ),
        ),
      ),
    );
  }
}
