import 'package:xeven_clone/widgets-export.dart';

class XevenAppBar extends StatelessWidget {
  const XevenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 100, 
            width: double.infinity,
            color: Colors.green,
          ),
         
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}