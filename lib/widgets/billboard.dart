import 'package:xeven_clone/widgets-export.dart';

class Billboard extends StatefulWidget {
  const Billboard({super.key});

  @override
  State<Billboard> createState() => _BillboardState();
}

class _BillboardState extends State<Billboard> {
  double maxTileWidth = 0;
  double maxTileHeight = 0;
  double spacing = 0;
  double verticalSpacing = 0;
  Color hoverColor = Colors.transparent;
  Widget backgroundImage = Container();
  List<Widget> backgroundImages = [];
  List<bool> isHovered = List.generate(
    8,
    (index) => false,
  );

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backgroundImage = healthTech();
    backgroundImages = [
      healthTech(),
      edTech(),
      retail(),
      aiDiag(),
      greenTech(),
      iot(),
      finTech(),
      hipaa()
    ];
  }

  @override
  Widget build(BuildContext context) {
    maxTileWidth = (MediaQuery.of(context).size.width / 4.0) - 16;
    maxTileHeight = (MediaQuery.of(context).size.height / 2.0) - 16;
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
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              backgroundImage,
              mouseRegion(0,'Health Tech', 0, 0),
              mouseRegion(1, 'Ed Tech',maxTileWidth, verticalSpacing),
              mouseRegion(2, 'Retail',spacing + 2 * maxTileWidth, verticalSpacing),
              mouseRegion(3, 'AI Diagnostics',spacing + 3 * maxTileWidth, verticalSpacing),
              mouseRegion(4,'Green Tech', 0, verticalSpacing + maxTileHeight),
              mouseRegion(5, 'IoT',spacing + 1 * maxTileWidth,
                  verticalSpacing + maxTileHeight),
              mouseRegion(6, 'Fin Tech',spacing + 2 * maxTileWidth,
                  verticalSpacing + maxTileHeight),
              mouseRegion(7, 'HIPAA Compliance',spacing + 3 * maxTileWidth,
                  verticalSpacing + maxTileHeight),
            ],
          ),
        ],
      ),
    );
  }

  Widget mouseRegion(int i, String title,double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: maxTileWidth,
        height: maxTileHeight,
        decoration: BoxDecoration(
          color:
              isHovered[i] ? Colors.pink.withOpacity(0.4) : Colors.transparent,
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              backgroundImage = backgroundImages[i];
              isHovered[i] = true;
            });
          },
          onExit: (event) {
            setState(() {
              // hoverColor[] = Colors.transparent;
              isHovered[i] = false;
            });
          },
          onHover: (event) {},
          child: SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(title,
                 style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                 ),),
                SizedBox(
                  height: 20,
                ),
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

  ColorFiltered edTech() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/book.webp',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered retail() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/retail.jpg',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered aiDiag() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/diagnostics.jpg',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered greenTech() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/green.jpeg',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered iot() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/iot.jpg',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered finTech() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/fintech.webp',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }

  ColorFiltered hipaa() {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.saturation),
      child: Image.asset(
        'assets/images/hipaa.jpeg',
        width: double.infinity,
        // height: 650,
        fit: BoxFit.contain,
      ),
    );
  }
}
