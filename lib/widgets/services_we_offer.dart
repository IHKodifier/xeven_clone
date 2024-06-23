import 'package:xeven_clone/widgets-export.dart';

class ServicesWeOffer extends StatefulWidget {
  const ServicesWeOffer({super.key});

  @override
  State<ServicesWeOffer> createState() => _ServicesWeOfferState();
}

class _ServicesWeOfferState extends State<ServicesWeOffer> {
  final servicesList = services;
  final Map<String, bool> isHoveredMap = {};
  String description = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    servicesList.forEach((key, value) => isHoveredMap[key] = false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .45,
      height: MediaQuery.of(context).size.height * .85,  
      // height: 350,
      // color: Colors.grey.shade50,
      child: Stack(
        children: [
          Positioned(
            left: 200,
            top: 50,
            child: SizedBox(
              width: 350,
              height: MediaQuery.of(context).size.height * 0.95,
              // color: const Color.fromRGBO(0, 0, 55, 1.0),
              child: Text(
                'Services We Offer',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          Positioned(
            left: 200,
            top: 150,
            child: Container(
              width: 350,
              height: MediaQuery.of(context).size.height * 0.78,
              color: const Color.fromRGBO(0, 0, 55, 1.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...servicesList.keys.map((e) => MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            isHoveredMap[e] = true;
                            description = servicesList[e]!;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isHoveredMap[e] = false;
                          });
                        },
                        child: Container(
                          color: isHoveredMap[e]!
                              ? Colors.pink.shade300
                              : const Color.fromRGBO(0, 0, 55, 1.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 24.0, top: 6, bottom: 4), 
                            child: ListTile(
                              title: Text(e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            left: 550,
            top: 180,
            child: Column(
              children: [
                Card(
                  elevation: 50,
                  child: Container(
                    width: 850,
                    // color: Colors.grey.shade500,
                    child:  Text(description),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
