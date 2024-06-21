import 'package:xeven_clone/widgets-export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

    height: MediaQuery.of(context).size.height,

    child: Center(child:  CachedNetworkImage(
      imageUrl: 'https://picsum.photos/200/300', 
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://plus.unsplash.com/premium_photo-1669658286643-d86cfb1fae97?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      // placeholder: Text('Full bleed image'),
      ), 
    ));
  }
}