import 'package:xeven_clone/widgets-export.dart';

class Billboard extends StatefulWidget {
  const Billboard({super.key});

  @override
  State<Billboard> createState() => _BillboardState();
}

class _BillboardState extends State<Billboard> {
  double spacing = 10;
  double verticalSpacing = 100;
  Color hoverColor = Colors.transparent;
  Widget backgroundImage = Container();
  // List<Widget> regions = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backgroundImage = healthTech();
  }

  @override
  Widget build(BuildContext context) {
  
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
                  SizedBox(height:20 ,),
          Stack(
            children: [
              backgroundImage,
mouseRegion(),
              
            ],
          ),
        ],
      ),
    );
  }
  Widget mouseRegion() {

    return Positioned(
      top: verticalSpacing,
      left: spacing,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white)
        ),
        // color: hoverColor,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              hoverColor = Colors.pink.withOpacity(0.4);
              // backgroundImage = hipaa();
            });
          },
          onExit: (event) {
            setState(() {
              hoverColor = Colors.transparent;
            });
          },
          onHover: (event) {},
          child: SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Health Tech'),
                SizedBox(height: 20,),
                Text(loremIpsum(words: 20, initWithLorem: true)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ColorFiltered healthTech() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/health-tech.jpeg',
        width: double.infinity,
        // height: 650, 
        fit: BoxFit.contain,
      ),
    );
  }
}
