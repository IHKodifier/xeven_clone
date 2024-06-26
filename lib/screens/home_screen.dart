import 'package:xeven_clone/widgets-export.dart';

class HomeScreenBackdrop extends StatelessWidget {
  const HomeScreenBackdrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

    height: MediaQuery.of(context).size.height,

    child: Center(child:  CachedNetworkImage(
      imageUrl: 'https://picsum.photos/200/300', 
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/premium-photo/abstract-purple-lines-triangles-glowing-high-tech-digital-energy-abstract-background_75563-14546.jpg?w=826'),
            fit: BoxFit.cover,
          ),
        ),
      ),
     
      ), 
    ));
  }
}