import 'package:xeven_clone/widgets-export.dart';

class XevenStats extends StatefulWidget {
  const XevenStats({super.key});

  @override
  State<XevenStats> createState() => _XevenStatsState();
}

class _XevenStatsState extends State<XevenStats> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          XevenStatistic(title: '10+', subTitle: 'Years of Experience'),
          // const VerticalDivider(
          //   width: 1.0, 
          //   thickness: 1.0, 
          //   color: Colors.black, 
          // ),
          // VerticalDivider(
          //   // width: 50,
          //   thickness: 5,
          //   color: Color.fromRGBO(0, 0, 55, 1.0),
          // ),
          XevenStatistic(title: '170', subTitle: 'Happy Clients Worldwide'),
          // VerticalDivider(),
          XevenStatistic(title: '200+', subTitle: 'Employees'),
          // VerticalDivider(),
          XevenStatistic(title: '04', subTitle: 'Offices around the Worlde'),
        ],
      ),
    );
  }
}

class XevenStatistic extends StatelessWidget {
  final String title;
  final String subTitle;
  const XevenStatistic(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 55, 1.0,),
                fontSize: 48.0,
              ),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
