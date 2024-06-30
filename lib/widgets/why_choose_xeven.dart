import 'package:xeven_clone/widgets-export.dart';

class WhyChooseXeven extends StatefulWidget {
  const WhyChooseXeven({super.key});

  @override
  State<WhyChooseXeven> createState() => WhyChooseXevenState();
}

class WhyChooseXevenState extends State<WhyChooseXeven> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ), 
        SectionHeader(title: 'Why Choose Xeven Solutions '),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 60.0), 
          child: Text('This highlights our skills, experience, and quality of work, demonstrating our commitment to excellence.'),
        ),
        XevenStats(),
        SizedBox(height: 20,),
      ],
    );
  }
}
