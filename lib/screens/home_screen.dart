import 'package:xeven_clone/widgets-export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100,),
    color: Colors.blue,
    height: MediaQuery.of(context).size.height,
    // width: double.infinity,
    child: Center(child: const Text('Home Screen')),
    );
  }
}