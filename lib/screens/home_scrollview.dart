import 'package:xeven_clone/widgets-export.dart';


class MyCustomScrollView extends StatefulWidget {
  const MyCustomScrollView({super.key});

  @override
  State<MyCustomScrollView> createState() => _MyCustomScrollViewState();
}

class _MyCustomScrollViewState extends State<MyCustomScrollView> {
  // State variable to manage the children of the Stack
  List<Widget> _stackChildren = [
    const HomeScreenBackdrop(), // Main content of the home screen
    const XevenAppBar(),
    const TagLine(),
  ];

  @override
  Widget build(BuildContext context) {
  return  ResponsiveBreakpoints.of(context).smallerThan(MOBILE)? Container(
    color: Colors.deepOrange,
            child: const Center(
                child: Text(
                    'Xeven.com requires aminimum screensize of 450 pixels wide. \n \n \n Try on a wider screen')), 

  )
     :CustomScrollView(
      slivers: [
        //Backgroundimage and text
        SliverToBoxAdapter(
          child: Stack(
            key: const Key('myStack'), // Add a unique key
            children: [
              // Place HomeScreen directly in the Stack
              _stackChildren[0], //homescreenbackdrop
              _stackChildren[1], // Xeven AppBar
                    //Banner,AppBar and HeadLine
              Positioned(
                  // Tag line of company
                  top: 180,
                  bottom: 290,
                  left: 0,
                  right: 0,
                        child: SizedBox(width: 250, child: _stackChildren[2])),
            ],
          ),
        ),
        //unstoppable Business Success
        const SliverToBoxAdapter(
          child: UnstoppableBusiness(),
        ),
        // Services we Offer
        const SliverToBoxAdapter(
          child: ServicesWeOffer(),
        ),
              // Why Choose Xeven
              const SliverToBoxAdapter(
                child: WhyChooseXeven(),
              ),
              // Scrolling Ticker
              const SliverToBoxAdapter(
                child: ScrollingTicker(),
              ),
              // BILLBOARD
              const SliverToBoxAdapter(
                child: Billboard(),
              ),
        // Bottom spacer
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        ),
      ],
    );
  }

  // Method to update the state and rebuild the widget
  void updateStackChildren(List<Widget> newChildren) {
    setState(() {
      _stackChildren = newChildren;
    });
  }
}
