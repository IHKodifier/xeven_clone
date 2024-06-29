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
            image: NetworkImage('https://noetic.org/wp-content/uploads/2022/06/My-project-4-800x800.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
     
      ), 
    ));
  }
}