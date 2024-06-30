import 'package:flutter/material.dart';
import 'package:xeven_clone/widgets-export.dart';

class Billboard extends StatefulWidget {
  const Billboard({super.key});

  @override
  State<Billboard> createState() => _BillboardState();
}

class _BillboardState extends State<Billboard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const SectionHeader(
              title:
                  'Industries We Transformed with Innovative Software Solutions'),
          //  SectionHeader(
              // title:
              //     loremIpsum(words: 7, initWithLorem: true)),
          ColorFiltered(
            colorFilter: ColorFilter.mode( Colors.grey.withOpacity(0.9),
            BlendMode.saturation),
            child: Image.asset(
              'assets/images/health-tech.jpeg',
              width: double.infinity,
             
            
              fit: BoxFit.contain,
            ),
          ),
          ColorFiltered(
            colorFilter: ColorFilter.mode( Colors.grey.withOpacity(0.9),
            BlendMode.saturation),
            child: Image.asset(
              'assets/images/book.webp',
              width: double.infinity,
             
            
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
