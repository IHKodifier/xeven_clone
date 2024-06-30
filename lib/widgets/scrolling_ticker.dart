import 'package:carousel_slider/carousel_slider.dart';
import 'package:xeven_clone/widgets-export.dart';

class ScrollingTicker extends StatefulWidget {
  const ScrollingTicker({super.key});

  @override
  State<ScrollingTicker> createState() => _ScrollingTickerState();
}

class _ScrollingTickerState extends State<ScrollingTicker> {
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          color: const Color.fromRGBO(0, 0, 55, 1.0),
          height: 150,
          width: double.infinity,
          child: CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 320,
              disableCenter: false,
              autoPlayInterval: const Duration(milliseconds: 80),
              autoPlayAnimationDuration:const Duration(milliseconds: 500),
              autoPlayCurve: Curves.linear,
              autoPlay: true,
              enableInfiniteScroll: true,
              // enlargeFactor: 1.2,
              pageSnapping: false,
              enlargeCenterPage: true,
              
              // aspectRatio: 16 / 9,
              viewportFraction: 0.2,
              animateToClosest: false,
            ),
            items: children,
          ),
        ),
      ],
    );
  }

  List<Widget> children = [
    // const Text(
    //   'ghdghdgf',
    //   style: TextStyle(
    //     color: Colors.white,
    //   ),
    // ),
    // const Text(
    //   '999555',
    //   style: TextStyle(
    //     color: Colors.white,
    //   ),
    // ),
    // const Text(
    //   '888777',
    //   style: TextStyle(
    //     color: Colors.white,
    //   ),
    // ),
    Image.asset('assets/images/accu-med-lg.webp'),
    Image.asset('assets/images/alfa.webp'),
    Image.asset('assets/images/hakeem-lg.webp'),
    Image.asset('assets/images/innova.webp'),
    Image.asset('assets/images/kia.webp'),
    Image.asset('assets/images/liquid-logo.webp'),
    Image.asset('assets/images/mdiclinic-lg.webp'),
    // Image.asset('assets/images/mdiclinic-lg.webp'),
    Image.asset('assets/images/millat.webp'),
    Image.asset('assets/images/mobihealth-logo.webp'),
    Image.asset('assets/images/redhanded-lg.webp'),
    Image.asset('assets/images/talk-psy.webp'),
    Image.asset('assets/images/yodha-lg.webp'),
  //   Image.asset('assets/images/redhanded-lg.webp'),
 
  ];
}
