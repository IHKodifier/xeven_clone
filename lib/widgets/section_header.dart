import 'package:xeven_clone/widgets-export.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64.0), 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/vector1.png'),
              Text(
                title,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: const Color.fromRGBO(0, 0, 55, 1.0),
              ),
              maxLines: 2,),
            ],
          ),
        ],
      ),
    );
  }
}
